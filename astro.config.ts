import mdx from "@astrojs/mdx";
import type { RemarkPlugins } from "astro";
import { unified } from "@astrojs/markdown-remark";
import sitemap from "@astrojs/sitemap";
import { defineConfig } from "astro/config";
import icon from "astro-icon";
import { toString } from "mdast-util-to-string";
import getReadingTime from "reading-time";

const remarkReadingTime: RemarkPlugins[number] = () => (tree, file) => {
	const { text } = getReadingTime(toString(tree));
	if (file.data.astro?.frontmatter) {
		file.data.astro.frontmatter.minutesRead = text;
	}
};

// https://astro.build/config
export default defineConfig({
	site: "https://dvcorreia.com",
	image: {
		layout: "constrained",
	},
	markdown: {
		processor: unified({
			remarkPlugins: [remarkReadingTime],
		}),
		// No syntax highlighting: code blocks are monochrome, styled with CSS
		// variables (--fg-code / --bg-code) like mattwidmann.net.
		syntaxHighlight: false,
	},
	integrations: [
		mdx(),
		sitemap(),
		icon({
			include: {
				mdi: ["*"],
			},
		}),
	],
});
