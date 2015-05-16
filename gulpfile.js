var coffee = require('gulp-coffee');
gulp = require('gulp');
jshint 				= require('gulp-jshint'),
uglify 				= require('gulp-uglify'),
rename 				= require('gulp-rename'),
concat 				= require('gulp-concat'),
livereload 		= require('gulp-livereload'),
connect       = require('gulp-connect'),
uglify        = require('gulp-uglify'),
historyApiFallback  = require('connect-history-api-fallback');

gulp.task('coffeescript', function(){
    gulp.src('src/coffee/entities/*.coffee')
        .pipe(concat('shopfly.js'))
        .pipe(coffee())
        .pipe(rename('shopfly.min.js'))
        .pipe(uglify())
        .pipe(gulp.dest('demo/js/'))
        .pipe(gulp.dest('dist/js/'));
});

gulp.task('deploy', function(){
    gulp.src('src/**/*.coffee')
        .pipe(coffee())
        .pipe(gulp.dest('demo/js/'));
});

gulp.task('js', function () {
   	gulp.src('demo/js/**/*.js')
      	.pipe(connect.reload());
});
gulp.task('html', function() {
  	return gulp.src('demo/**/*.html')
	    .pipe(connect.reload());
});

gulp.task('watch', function() {
   	gulp.watch('src/coffee/**/*.coffee', ['coffeescript'])
});

gulp.task('default', function() {
    gulp.start('html', 'js', 'coffeescript', 'watch', 'webserver');
});

gulp.task('watch', function() {
   	gulp.watch('src/coffee/**/*.coffee', ['coffeescript']),
   	gulp.watch('demo/js/**/*.js', ['js']),
   	gulp.watch(['demo/**/*.html'], ['html'])
});

gulp.task('webserver', function() {
   	connect.server({
		root: __dirname,
		hostname: '0.0.0.0',
		port: 9000,
		livereload: true,
		middleware: function(connect, opt) {
			return [ historyApiFallback ];
		}
   	});
});