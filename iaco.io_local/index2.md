---
layout: default
permalink: /i2/

author: iaco
home-icon:
  top: true
  middle:
    url: assets/media/logo/iaco-mac-power.png
    position: 100%
    opacity: .55

# youtube: "intro"

pre-title: "Hi internet friend ;) Welcome to…"
title: "My journey building a healthier self!"
description: "I'm <a href='/about'>IΛCO</a>, a PhD engineer, and I love to research <i>evidence-based & practical solutions</i> that help us create <i class='far fa-heart'></i> <a href='/articles'>positive habits</a>! My goal is to build a <i>healthier, happier, wealthier</i> and <i title='a.k.a. \"more productive\", for the grammar-savvies ;)'>productivier*</i> life!"
post-description: "I share my adventures and strategies on developing new healthier habits here:"
# post-description: "I just started this online adventure! Soon I wish to send my first newsletter, and you can join me by subscribing here ;) <form target='_blank' style='margin: 0; font-weight: normal;' action='https://app.convertkit.com/forms/5308287/subscriptions' method='post'><input name='email_address' required='' type='email' placeholder=' &#xF0E0; E-mail' autocapitalize='none' autocorrect='off' style='width: 35%;'><input name='first_name' required='' type='text' placeholder=' &#xF007; Name' style='width: 35%;'><input type='submit' class='button small' value='Join&#xF1D8;' style='width: 20%;'></form>"

# That is why I  the <a href='/newsletter'><i class='far fa-paper-plane'></i>Weekly Wave newsletter</a> I share many tools and insights I know, or am currently learning about. Join me and <span class='newsletter-readers'></span> readers!

show-home: true
links-side: true

links-home:
  - title: "Videos"
    icon: fab fa-youtube
    url: "/youtube"
    newtab: true
    show-home: true
    show-side: false
  - title: "Insta"
    icon: fab fa-instagram
    url: "/instagram"
    newtab: true
    show-home: true
    show-side: false
  - title: "Articles"
    icon: fa fa-feather-alt
    url: "/articles"
    newtab: false
    show-home: true
    show-side: false
  # - title: Join Weekly Wave
  #   icon: fa fa-paper-plane
  #   url: "/newsletter"
  #   newtab: false
  #   show-home: false
  #   show-side: true

show-main: true

links-gallery:
  - url: /youtube
    newtab: true
    title: INSTAGRAM<br>Check out my latest content!
    image: assets/media/logos/instagram.jpg
  - url: /articles
    newtab: false
    title: ALL ARTICLES<br>Productivity, health, habits &amp; more...
    image: assets/media/bg/articles.jpg

links-footer: true

show-corner: true

---

# My Steps For A Healthier Self

On my self-improvement journey, I will apply the "Improvement Diamond":

<style>
  .fa-heart {
    animation: heartbeat 1s infinite;
  }
  @keyframes heartbeat {
    0%   { scale: 1; }
    20%  { scale: .75; }
    40%  { scale: 1; }
    60%  { scale: .75; }
    80%  { scale: 1.1; }
    100% { scale: 1.1;}
  }
</style>

<p style="min-width: max-content; line-height: normal; margin-left: 45%; margin-right: 55%; border: 1px solid black; padding: 7px; text-align: center; font-size: 20px; rotate: 45deg !important; height: unset !important; width: 100px !important; aspect-ratio: 1/1 !important;">
<i class="fas fa-heart" style="color: var(--em-red); rotate: -45deg; translate: -4px;"></i>
→
<i class="fas fa-search" style="color: DarkGoldenRod; rotate: -45deg;"></i>
<br>
↑
<i class="far fa-square" style="visibility: hidden;"></i><i class="far fa-square" style="visibility: hidden;"></i>
↓
<br>
<i class="fas fa-check-double" style="color: var(--em-blue); rotate: -45deg; scale: .9;"></i>
←
<i class="fas fa-pencil-alt" style="color: var(--em-green); rotate: -90deg; translate: 2px;"></i>
</p>
<br>

<details markdown="1">
<summary>
<b>Step <i class="fas fa-search" style="color: DarkGoldenRod;"></i>  &nbsp;&mdash;&nbsp; Identify areas to improve</b>
</summary>
When the goal is to improve our life overall, it is always a good idea to start with our physical health, which directly impacts:

- our performance
- our mood
- our own happiness and the happiness of people we live with
- our ability to plan and focus
- our energy levels and motivation... and many more!

In the article below I explain a bit more about my strategy for positive habits to improve my physical health:

{% include showroom post="/article/my-habits/" youtube=false %}
</details>

<details markdown="1">
<summary>
<b>Step <i class="fas fa-pencil-alt" style="color: var(--em-green); rotate: -45deg;"></i> &nbsp;&mdash;&nbsp; Design upgrade plans</b>
</summary>
I *firmly believe* that we can all build a healthier life, and by 'healthier'
</details>

<details markdown="1">
<summary>
<b>Step <i class="fas fa-check-double" style="color: var(--em-blue);"></i> &nbsp;&mdash;&nbsp; Build healthier habits and lifestyles</b>
</summary>
I firmly believe that we can all build a healthier life, and by 'healthier'
</details>

<details markdown="1">
<summary>
<b>Step <i class="fas fa-heart" style="color: var(--em-red);"></i> &nbsp;&mdash;&nbsp; Love the journey, love yourself</b>
</summary>
I firmly believe that we can all build a healthier life, and by 'healthier'
</details>

{% for post in site.posts %}
{% unless post.hidden %}
{% include showroom url=post.url newtab=post.newtab image=post.image title=post.title youtube=post.youtube %}
{% endunless %}
{% endfor %}

### Remember to follow and enjoy the journey with me 🙂

<a href="/ig" target="_blank" class="button secondary"><i class="fab fa-instagram"></i> iaco.io</a>

{% include newsletter %}
