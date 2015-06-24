module.exports = (grunt) ->
  grunt.config "watch",
  stylesheets:
    files: "source/scss/**/*"
    tasks: "sass"
    options:
      livereload: true
  
  autoprefixer:
    files: 'dist/css/*':'dist/css/*'
    tasks: "autoprefixer"

  partials:
    files: ["source/templates/**/*", "source/data/*"]
    tasks: "assemble"
    options:
      livereload: true

  public:
    files: [ "public/**/*" ]
    tasks: "copy:main"

  js:
    files: "source/js/**/*"
    tasks: "coffee"
    options:
      livereload: true

  grunt.loadNpmTasks 'grunt-contrib-watch'
