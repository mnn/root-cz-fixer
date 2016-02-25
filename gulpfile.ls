require! <[ gulp fs ]>
$ = (require \gulp-load-plugins)!

parsePackage = -> JSON.parse(fs.readFileSync('./package.json'));

do ->
  son = JSON.parse fs.readFileSync './package.json'
  c = $.util.colors
  $.util.log c.yellow(\root-cz-fixer), parsePackage!.version, 'by', c.magenta(\monnef)

gulp.task \default, ->
  $.util.log 'default'

scriptFiles = [ \root-cz-fixer.user.js.ls ]

# TODO: inject version

gulp.task \scripts, ->
  gulp.src scriptFiles
    .pipe $.livescript {+bare}
    .on 'error' -> throw it
    .pipe gulp.dest \.

gulp.task \watch, ->
  gulp.watch scriptFiles, ->
    gulp.run \scripts
