---
layout: default
permalink: /research-log
title: Research Blog
---

# {{page.title}}

This is a blog of research notes that I hope someone (including myself) will find useful. 
I used to keep a local research/work log, but now that I have a website I'm going to put it online (probably to my poor judgement).

A few recent posts are below, and the archive is here. I love talking about science, so please ask questions or point cool things out to me!



<article>
<h2>
      <a href="{{ site.posts.last.url }}">
        {{ site.posts.last.title }}
      </a>
    </h2>
 <time datetime="{{ site.posts.last.date | date: "%Y-%m-%d" }}">{{ site.posts.last.date | date_to_long_string }}</time>
    {{ site.posts.last.excerpt }}
</article>
  
