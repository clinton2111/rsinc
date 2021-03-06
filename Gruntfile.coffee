module.exports = (grunt) ->
  sassLoc = './sass'
  coffeeLoc = './coffee'
  cssLoc = './css'
  jsLoc = './js'
  jsFinal = './dist/js'
  cssFinal = './dist/css'
  sass_require = ['bourbon']
  # ===========================================================================
  # CONFIGURE GRUNT ===========================================================
  # ===========================================================================

  grunt.initConfig
    pkg: grunt.file.readJSON('package.json')

    watch:
      coffee:
        files: [coffeeLoc + '/**/*.coffee']
        tasks: ['coffee']

      concat:
        files: [
          jsLoc + '/**/*.js'
        ]
        tasks: ['concat']

      compass:
        files: [sassLoc + '/**/*.scss']
        tasks: ['compass']
      pug:
        files: ['./**/*.pug']
        tasks: ['pug']


    concat:
      options:
        stripBanners: true
        banner: '/*! <%= pkg.name %> - v<%= pkg.version %> - ' + '<%= grunt.template.today("yyyy-mm-dd") %> */'
      target:
        files: [{
          src: [
            jsLoc + '/**/*.js'
          ]
          dest: jsLoc + '/main.js'
        }]
    coffee:
      compile:
        files: [{
          expand: true
          cwd: coffeeLoc
          src: ['**/*.coffee']
          dest: jsLoc
          ext: '.js'
        }]
    compass:
      compile:
        options:
          sassDir: sassLoc
          cssDir: cssLoc
          imagesDir: './assets'
          environment: 'development'
          outputStyle: 'expanded'
          require: sass_require
    uglify:
      options:
        mangle: true
      build:
        files: [{
          expand: true
          cwd: jsLoc
          src: ['main.js']
          dest: jsFinal
          ext: '.min.js'
        }]
    cssmin:
      build:
        files: [{
          expand: true,
          cwd: cssLoc,
          src: ['style.css'],
          dest: cssFinal,
          ext: '.min.css'
        }]
    pug:
      compile:
        options:
          pretty:true
          data:
            debug: false
        files:
          './index.html': './index.pug'
          './404.html': './404.pug'
    htmlmin:
      build:
        options:
          removeComments: true,
          collapseWhitespace: true,
          conservativeCollapse: true
        files: [
          {
            'dist/index.html': './index.html',
            'dist/404.html': './404.html'
          }]
    copy:
      main:
        files: [
          {expand: true, src: ['./assets/**','./package.json','./bower.json'], dest: 'dist/'}
        ]





  # ===========================================================================
  # LOAD GRUNT PLUGINS ========================================================
  # ===========================================================================
  # we can only load these if they are in our package.json
  # make sure you have run npm install so our app can find these
  grunt.loadNpmTasks 'grunt-contrib-uglify'
  grunt.loadNpmTasks 'grunt-contrib-cssmin'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-concat'
  grunt.loadNpmTasks 'grunt-contrib-compass'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-pug'
  grunt.loadNpmTasks 'grunt-contrib-htmlmin'
  grunt.loadNpmTasks 'grunt-contrib-copy'
  grunt.registerTask 'default', ['watch']
  grunt.registerTask 'wrap', ['uglify', 'cssmin','htmlmin','copy']