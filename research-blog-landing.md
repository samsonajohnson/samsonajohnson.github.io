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
      <a href="{{ post.last.url }}">
        {{ post.last.title }}
      </a>
    </h2>
 <time datetime="{{ post.last.date | date: "%Y-%m-%d" }}">{{ post.last.date | date_to_long_string }}</time>
    {{ post.last.excerpt }}
  </article>
  
{% for post in site.posts.first %}
  <article>
    <h2>
      <a href="{{ post.url }}">
        {{ post.title }}
      </a>
    </h2>
    <time datetime="{{ post.date | date: "%Y-%m-%d" }}">{{ post.date | date_to_long_string }}</time>
    {{ post.excerpt }}
  </article>
{% endfor %}
