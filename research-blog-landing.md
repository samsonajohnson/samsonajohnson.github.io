---
layout: default
permalink: /research-log
title: Research Blog
---

This is a blog of research notes that I hope someone (including myself) will find useful. 
Inspired by David Hogg's, I used to keep a local research/work log. Now that I have a website, I'm gonna put it online (probably to my poor judgement).

A few recent posts are below, and the archive is here. I love talking about science, so please ask questions or point cool things out to me!


{% for post in site.posts %}
  <article>
    <h2>
      <a href="{{ post.url }}">
        {{ post.title }}
      </a>
    </h2>
    <time datetime="{{ post.date | date: "%Y-%m-%d" }}">{{ post.date | date_to_long_string }}</time>
    {{ post.content }}
  </article>
{% endfor %}