
var nib         = require('nib')
  , path        = require('path')
  , webpack     = require('webpack')
  , ExtractText = require('extract-text-webpack-plugin');

var env       = process.env.NODE_ENV || 'development'
  , prod      = env === 'production'
  , subdomain = process.env.SUBDOMAIN || process.env.npm_package_config_subdomain || 'develop.com'
  , dev_port  = process.env.npm_package_config_dev_port  || 8081;

var entry =
  { client: ['./client/layout' ] }

var plugins =
  [ new webpack.optimize.DedupePlugin()
  , new ExtractText('site.css', { allChunks:true })
  ]
var loaders =
  [ { test: /\.styl$/, loader: ExtractText.extract('css-loader!stylus-loader') } ]

// init
// ----
if (prod) { // production settings
  plugins.push(new webpack.optimize.UglifyJsPlugin())
  loaders.push({ test: /\.ls$/, loader: 'livescript-loader?const=true' })
} else {
  plugins.push(new webpack.HotModuleReplacementPlugin())
  // add hot-reload
  loaders.push({ test: /\.ls$/, loaders: ['react-hot', 'livescript-loader?const=true'] })
  entry.client.push
    ('webpack/hot/dev-server'
    , 'webpack-dev-server/client?http://'
      + subdomain
      + ':'
      + dev_port
    )
}

// main
// ----
module.exports =
  { cache: !prod
  , context:  __dirname
  , debug:    !prod
  , quiet:    prod
  , devtool:  'source-map'
  , optimize: prod
  , entry:    entry
  , plugins:  plugins
  , resolve:  { extensions: ['', '.ls', '.js', '.styl'] }
  , module:   { loaders: loaders }
  , stylus:   { use: [nib()] }
  , node:     { fs: 'empty' }
  , output:
    { path:       path.join(__dirname, 'public/builds')
    , filename:   "[name].js"
    , publicPath: 'http://'
      + subdomain
      + ':'
      + dev_port
      + '/builds/'
    }
  }
