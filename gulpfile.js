// var gulp = require('gulp');
// var sass = require('gulp-sass');
// var autoprefixer = require('gulp-autoprefixer');
// var cssmin = require('gulp-cssmin');
// var jsmin = require('gulp-jsmin');
// var concat = require('gulp-concat');
// var rename = require('gulp-rename');
// var runSequence = require('run-sequence');
// var minifycss = require('gulp-minify-css');
// var livereload = require('gulp-livereload');
// var notify = require('gulp-notify');
// var jshint = require('gulp-jshint');
// var uglify = require('gulp-uglify');
// var lr = require('tiny-lr');
// var server = lr();

// //Styles
// gulp.task('styles', function() {
//   return gulp.src('app/styles/custom.scss')
//     .pipe(sass({ style: 'expanded', }))
//     .pipe(autoprefixer('last 2 version', 'safari 5', 'ie 8', 'ie 9', 'opera 12.1', 'ios 6', 'android 4'))
//     .pipe(gulp.dest('app/assets/css'))
//     .pipe(rename({ suffix: '.min' }))
//     .pipe(minifycss())
//     .pipe(livereload(server))
//     .pipe(gulp.dest('app/assets/css'))
//     .pipe(notify({ message: 'Styles task complete' }));
// });

// // Scripts
// gulp.task('scripts', function() {
//   return gulp.src('app/scripts/custom.js')
//     .pipe(jshint())
//     .pipe(jshint.reporter('default'))
//     .pipe(concat('main.js'))
//     .pipe(gulp.dest('app/assets/js'))
//     .pipe(rename({ suffix: '.min' }))
//     .pipe(uglify())
//     .pipe(livereload(server))
//     .pipe(gulp.dest('app/assets/js'))
//     .pipe(notify({ message: 'Scripts task complete' }));
// });

// var gulp 	= require('gulp'),
//   	concat 	= require('gulp-concat'),
//   	uglify 	= require('gulp-uglify'),
//   	rename 	= require('gulp-rename'),
//     handlebars = require('gulp-handlebars'),
//     declare = require('gulp-declare'),
//     cleanCSS = require('gulp-clean-css');

var gulp = require('gulp');
var sass = require('gulp-sass');
var autoprefixer = require('gulp-autoprefixer');
var cssmin = require('gulp-cssmin');
var jsmin = require('gulp-jsmin');
var concat = require('gulp-concat');
var rename = require('gulp-rename');
var runSequence = require('run-sequence');
var minifycss = require('gulp-minify-css');
var livereload = require('gulp-livereload');
var notify = require('gulp-notify');
var jshint = require('gulp-jshint');
var uglify = require('gulp-uglify');
var cleanCSS = require('gulp-clean-css');
var lr = require('tiny-lr');
var server = lr();

var paths = {
  styles: {
    src: 'app/styles/custom.scss',
    dest: 'app/assets/css'
  },
  scripts: {
    src: 'app/scripts/custom.js',
    dest: 'app/assets/js'
  },
};

function styles() {
  return gulp
  	.src(paths.styles.src, {
      sourcemaps: true
    })
	.pipe(sass())
	.pipe(rename({
	  basename: 'custom',
	  suffix: '.min'
	}))
.pipe(cleanCSS({debug: true}))
.pipe(concat('custom.min.css'))
.pipe(gulp.dest(paths.styles.dest));
}

function scripts() {
  return gulp
	.src(paths.scripts.src, {
		sourcemaps: true
	})
	.pipe(uglify())
	.pipe(concat('custom.min.js'))
	.pipe(gulp.dest(paths.scripts.dest));
}

function watch() {
  gulp.watch(paths.scripts.src, scripts);
  gulp.watch(paths.styles.src, styles);
}

var build = gulp.parallel(styles, scripts, watch);

gulp.task(build);
gulp.task('default', build);