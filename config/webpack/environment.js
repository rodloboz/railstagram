const { environment } = require('@rails/webpacker')

const webpack = require('webpack')

// Preventing Babel from transpiling NodeModules packages
environment.loaders.delete('nodeModules');

module.exports = environment
