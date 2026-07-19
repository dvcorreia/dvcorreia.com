import { defineCollection } from "astro:content";
import { glob } from "astro/loaders";
import { z } from "astro/zod";

const posts = defineCollection({
	// Load Markdown and MDX files in the `src/content/posts/` directory.
	loader: glob({
		base: "./src/content/posts",
		pattern: "**/index.{md,mdx}",
		generateId: ({ entry }) => entry.replace(/\/index\.(md|mdx)$/, ""),
	}),
	// Type-check frontmatter using a schema
	schema: z.object({
		title: z.string(),
		description: z.string().optional(),
		pubDate: z.coerce.date(),
		updatedDate: z.coerce.date().optional(),
		// Optional status line shown in the aside (e.g. "draft", "in progress").
		status: z.string().optional(),
		// Hide from listings and feeds while still building the page.
		draft: z.boolean().default(false),
	}),
});

const now = defineCollection({
	// Load the dated "now" entries.
	loader: glob({ base: "./src/content/now", pattern: "**/[^_]*.{md,mdx}" }),
	schema: z.object({
		title: z.string(),
		pubDate: z.coerce.date(),
	}),
});

export const collections = { posts, now };
