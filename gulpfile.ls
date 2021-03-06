
require! {
  fs
  gulp
  dotenv
  \open
  \gulp-livescript
  \gulp-nodemon
  \gulp-shell
  \gulp-util
  \gulp-watch
  \webpack

  './package.json': config
  './webpack.config.js': wp-config

  './server/App': App
  'webpack-dev-server': WebpackDevServer
}

dotenv.load!

const env       = process.env.NODE_ENV or \development
const port      = parse-int (process.env.NODE_PORT or process.env.npm_package_config_node_port)
const dev-port  = process.env.npm_package_config_dev_port
const domain    = process.env.DOMAIN or process.env.npm_package_config_domain

const prod = env is \production

const compiler = webpack wp-config # use code caching


gulp.task \build:test <[build:server]> -> process.exit!

gulp.task \build:server ->
  gulp.src ['./{shared,server}/**/*.ls']
    .pipe gulp-livescript {+bare, -header, const:true} # strip
    .pipe gulp.dest './build'

gulp.task \build:client run-compiler # build client app bundle


# watching
# --------
gulp.task \webpack:dev-server <[build:client]> (cb) ->
  const dev-server = new WebpackDevServer compiler, {
    +quiet
    hot: !prod
    debug: !prod
    devtool: \sourcemap
    public-path:  "http://#domain:#dev-port/builds/"
    content-base: "http://#domain:#port"
  }
  dev-server.listen dev-port, (err) ->
    if err then throw new gulp-util.PluginError "webpack-dev-server: #err"
    cb!

gulp.task \watch -> # changes needing server restart
  gulp.watch ['./server/**/*.ls' './shared/**/*.ls'] [\build:server]


# env tasks
# ---------
gulp.task \development <[watch build:server webpack:dev-server ]> ->
  gulp-nodemon {script:config.main, ext:'ls jade', ignore:<[node_modules bin build client shared/react test]>, node-args:'--harmony'}
    .once \start ->
      <- boot-delay-fn
      open "http://#domain:#port"
gulp.task \production <[build:client ]> (gulp-shell.task 'bin/start')


# main
# ----
default-tasks = <[build:server ]>
  ..push env
gulp.task \default default-tasks


function boot-delay-fn fn
  set-timeout fn, 1700ms # TODO replace with child-to-parent msg

function run-compiler cb
  (err, stats) <- compiler.run
  if err then throw new gulp-util.PluginError "webpack-dev-server: #err"
  process.env.CHANGESET = stats.hash
  cb!

# vim:fdm=marker
