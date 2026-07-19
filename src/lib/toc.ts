import type { MarkdownHeading } from "astro";

export type TocNode = { heading: MarkdownHeading; children: TocNode[] };

const MIN_DEPTH = 2;

/**
 * Build a nested table of contents from the flat headings list that Astro
 * exposes for a rendered Markdown entry.
 *
 * Headings from `h2` up to and including `maxDepth` are included. `maxDepth`
 * defaults to `3` (h2 + h3, like the old site).
 */
export function buildToc(
	headings: MarkdownHeading[] = [],
	maxDepth = 3,
): TocNode[] {
	const toc: TocNode[] = [];
	// Stack of the most recent node at each depth, used to attach children.
	const parents: TocNode[] = [];

	for (const heading of headings) {
		if (heading.depth < MIN_DEPTH || heading.depth > maxDepth) continue;

		const node: TocNode = { heading, children: [] };

		// Drop any parents deeper than or equal to the current heading.
		while (
			parents.length > 0 &&
			parents[parents.length - 1].heading.depth >= heading.depth
		) {
			parents.pop();
		}

		if (parents.length === 0) {
			toc.push(node);
		} else {
			parents[parents.length - 1].children.push(node);
		}

		parents.push(node);
	}

	return toc;
}
