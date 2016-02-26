require! <[ gulp fs ]>
$ = (require \gulp-load-plugins)!
{flatten, map} = require \prelude-ls

parsePackage = -> JSON.parse(fs.readFileSync('./package.json'));

do ->
  son = JSON.parse fs.readFileSync './package.json'
  c = $.util.colors
  $.util.log c.yellow(\root-cz-fixer), parsePackage!.version, 'by', c.magenta(\monnef)

gulp.task \default, [\help]

gulp.task \help, $.taskListing

scriptFiles = [ \root-cz-fixer.user.ls ]
styleFiles = [ \basic.styl ]
toCleanFiles = [scriptFiles, styleFiles] |> flatten |> map ->
  it.replace(/\.ls$/, \.js).replace(/\.styl$/, \.css)
console.log toCleanFiles

production = false

# TODO: inject version

gulp.task \scripts, ->
  gulp.src scriptFiles
    .pipe $.if !production, $.sourcemaps.init!
    .pipe $.livescript {+bare}
    .pipe $.if !production, $.sourcemaps.write!
    .pipe $.if production, $.uglify {preserveComments: \license, mangle: {except: [\jQuery, \$]} }
    .on 'error' -> throw it
    .pipe gulp.dest \.

gulp.task \styles, ->
  gulp.src styleFiles
    .pipe $.if !production, $.sourcemaps.init!
    .pipe $.stylus {compress: production}
    .pipe $.if !production, $.sourcemaps.write!
    .pipe gulp.dest \.

gulp.task \watch, [\scripts \styles], ->
  gulp.watch scriptFiles, [\scripts]
  gulp.watch styleFiles, [\styles]

gulp.task \build, (cb) ->
  production := true
  $.sequence [\scripts, \styles], cb
