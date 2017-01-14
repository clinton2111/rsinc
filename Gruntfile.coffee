module.exports = (grunt) ->
  sassLoc = './sass'
  coffeeLoc = './coffee'
  #  cssLoc = '.css'
  jsLoc = './js'
  jsFinal = './js'
  cssFinal = './css'
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
          dest: jsFinal + '/main.js'
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
          cssDir: cssFinal
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
          cwd: jsFinal
          src: ['main.js']
          dest: jsFinal
          ext: '.min.js'
        }]
    cssmin:
      build:
        files: [{
          expand: true,
          cwd: cssFinal,
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
  grunt.registerTask 'default', ['watch']
  grunt.registerTask 'wrap', ['uglify', 'cssmin']