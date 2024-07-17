import type { BlogPost } from '../content/config';

export function sortPostsByDateDesc(posts: BlogPost []): BlogPost [] {
  return posts.sort((a, b) => new Date(b.data.pubDate).getTime() - new Date(a.data.pubDate).getTime());
}

export function sortPostsByDateAsc(posts: BlogPost []): BlogPost [] {
  return posts.sort((a, b) => new Date(a.data.pubDate).getTime() - new Date(b.data.pubDate).getTime());
}
