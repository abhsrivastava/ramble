const path = require('path')
const outputDir = path.join(__dirname, "build")
const HtmlWebpackPlugin = require("html-webpack-plugin")
const dotEnv = require("dotenv-webpack")
const { publicDecrypt } = require("crypto")

module.exports = {
    mode: "development",
    watch: true,
    entry: {
        index: path.join(__dirname, "src/Index.bs.js")
    },
    output: {
        path: outputDir,
        publicPath: "/",
        filename: "[name][contenthash].js",
        clean: true
    },
    devtool: "inline-source-map",
    devServer: {
        historyApiFallback: true,
        hot: true,
        compress: true,
        port: 8001,
        static: {
            directory: outputDir
        }
    },
    plugins: [
        new HtmlWebpackPlugin({
            title: "Ramble for Hikers!",
            filename: "index.html",
            template: path.join(__dirname, "src/template.html")
        })
    ],
    module: {
        rules: [
            {
                test: /\.css$/,
                use: ["style-loader", "css-loader"]
            },
            {
                test: /\.(svg|jpg|jpeg|gif|tiff|png|webp|ico)$/,
                type: "asset/resource",
            }
        ]
    }
}