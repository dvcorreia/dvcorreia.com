const postcssLightningcss = require("postcss-lightningcss");

const minify = process.env.HUGO_ENVIRONMENT === 'production' ? true : false;

module.exports = {
	plugins: [
		postcssLightningcss({
			browsers: ">= 2%",
			lightningcssOptions: {
				minify: minify,
				cssModules: false,
				drafts: {
					nesting: true,
				}
			}
		}),
	]
};
