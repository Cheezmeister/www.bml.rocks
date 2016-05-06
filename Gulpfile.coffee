G = require 'gulp'
jade = require 'gulp-jade'

G.task 'default', (done) ->
  G
    .src 'index.jade'
    .pipe jade()
    .pipe G.dest 'dist'

  G
    .src 'vendor/**'
    .pipe G.dest 'dist'

G
  .watch 'index.jade', ['default']
  .on 'change', -> console.log 'good'
