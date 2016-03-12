require! {
  gulp
  fs
  del
  'js-string-escape'
}
$ = (require \gulp-load-plugins)!
{flatten, map} = require \prelude-ls

readFile = (fileName) -> fs.readFileSync(fileName, 'utf8')
readFileAndEscape = (fileName) -> readFile fileName |> jsStringEscape
parsePackage = -> readFile \./package.json |> JSON.parse
packageVersion = -> parsePackage!.version

do ->
  son = JSON.parse fs.readFileSync './package.json'
  c = $.util.colors
  $.util.log c.yellow(\root-cz-fixer), packageVersion!, 'by', c.magenta(\monnef)

gulp.task \default, [\help]

gulp.task \help, $.taskListing

scriptFiles = [\root-cz-fixer.user.ls]
jsFiles = scriptFiles |> map -> it.replace(/\.ls$/, \.js)
styleFiles = [\basic.styl]
cssFiles = styleFiles |> map -> it.replace(/\.styl$/, \.css) 
toCleanFiles = [jsFiles, cssFiles] |> flatten
preludeLs = \prelude-browser-min.js

production = false

gulp.task \scripts, [\styles], ->
  gulp.src scriptFiles
    .pipe $.replace '%%VERSION%%', packageVersion!
    .pipe $.replace '%%COMPILED_CSS%%', readFileAndEscape \basic.css
    .pipe $.replace '%%LIB_PRELUDE_LS%%', readFile preludeLs
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
  $.sequence \clean, \styles, \scripts, cb

gulp.task \clean, ->
  del toCleanFiles
