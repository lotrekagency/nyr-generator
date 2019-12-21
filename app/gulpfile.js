var gulp = require('gulp');
var sass = require('gulp-sass');
var concat = require('gulp-concat');
var rename = require('gulp-rename');
var uglify = require('gulp-uglify');
var cleanCSS = require('gulp-clean-css');


var paths = {
  styles: {
    src: 'styles/custom.scss',
    dest: 'assets/css'
  },
  scripts: {
    src: 'scripts/custom.js',
    dest: 'assets/js'
  },
  images: {
    src: 'images/**/*',
    dest: 'assets/images'
  },
};

function images() {
    return gulp
        .src(paths.images.src)
        .pipe(gulp.dest(paths.images.dest));
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

var dev = gulp.parallel(styles, scripts, watch, images);
var build = gulp.parallel(styles, scripts, images);


gulp.task('default', build);
gulp.task('dev', dev);
