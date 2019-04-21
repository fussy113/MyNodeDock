const path = require("path");
const rootPath = path.resolve(__dirname, '../');

module.exports = {

  module: {
    rules: [
      {
        test: /\.css?$/,
        loaders: ['style-loader', 'css-loader']
      },
      {
        test: /\.scss$/,
        loaders: ['style-loader', 'css-loader', 'sass-loader']
      },
      {
        test: /\.(png|jpe?g|gif|svg)$/,
        loader: 'url-loader',
        query: {
          limit: 1000, // 1kB
          name: 'img/[name].[hash:7].[ext]'
        }
      },
      {
        test: /\.(otf|eot|svg|ttf|woff|woff2)(\?.)?$/,
        loader: 'url-loader'
      }
    ]
  },
  resolve: {
    extensions: ['.vue'],
    alias: {
      '@': rootPath,
      '~': rootPath,
    }
  }
};
