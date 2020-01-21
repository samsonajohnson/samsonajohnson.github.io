---
layout: default
permalink: /research-log
title: Research Blog
---

# {{page.title}}

This is a blog of research notes that I hope someone (including myself) will find useful. 
I used to keep a local research/work log, but now that I have a website I'm going to put it online (probably to my poor judgement).
I find all topics in astro interesting, so I will probably keep most notes on science that I know the least about, especially as I am probably learning the most in these areas. 

A few recent posts are below, and the archive is here. I love talking about science, so please ask questions or point cool things out to me!


{% assign post = site.posts.first %}
<article>
<h2>
      <a href="{{ post.url }}">
        {{ post.title }}
      </a>
    </h2>
 <time datetime="{{ post.date | date: "%Y-%m-%d" }}">{{ post.date | date_to_long_string }}</time>
    {{ post.excerpt }}
</article>
  
