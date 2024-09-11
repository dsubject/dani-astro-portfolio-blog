import { z } from 'astro:content';

// Define the structure of a blog post's data
export const blogPostDataSchema = z.object({
  title: z.string(),
  description: z.string(),
  pubDate: z.date(),
  tags: z.array(z.string()),
  updatedDate: z.date().optional(),
  image: z.string().optional()
});

// Derive the TypeScript type from the Zod schema
export type BlogPostData = z.infer<typeof blogPostDataSchema>;

// Define the structure of a blog post
export interface BlogPost {
  id: string;
  slug: string;
  body: string;
  collection: string;
  data: BlogPostData;
}
