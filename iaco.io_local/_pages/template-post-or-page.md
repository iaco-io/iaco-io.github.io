---
layout: default
# date: 2023-09-15 17:00:00 +0100
permalink: /template/
# redirect_from:
#   - /aa
#   - /bb
# redirect_to: https://iaco.io
# link-to-share: https://other-link.to/different-website?video=x
featured: false #true
hidden: false #true
author: iaco

# image: assets/media/bg/default.jpg # https://i1.ytimg.com/vi/__Replace_3_YouTubeIDs_InThisPage__/maxresdefault.jpg
youtube: "b-ck-9d9haI"

home-icon: #true (all defaults) or false (all hidden)
#  back: true
  top: #true (default: icon) or false (hidden)
    url: assets/media/logo/power-violet-alpha.png
    width: 80px
    opacity: .5
#  middle: #true (default: icon) or false (hidden)
#    url: assets/media/logo/power-alpha.png
#    position: 100%
#    opacity: .5

pre-title: pre-title<br>With line-break
title: Template Title
# title-bg: true #false
description: Description text
post-description: Additional description

# categories: [ cruelty-free, gym, nutrition, productivity, sleep, wellbeing ]
# tags: [ a, b ]

# links-side: true #false

# show-home: true #false
# home-fullscreen: false #true
links-home: #false
  - title: Newsletter
    icon: fa fa-paper-plane
    url: "#newsletter" #https:// #/articles
    newtab: false #true
    show-home: true #false
    show-side: true #false

# show-main: true #false

links-gallery: #false
  - url: /youtube #https:// #"#newsletter"
    newtab: true #false
    title: YOUTUBE<br>Check out my latest video!
    image: assets/media/logos/youtube.jpg
  - url: /articles #https:// #"#newsletter"
    newtab: false #true
    title: ARTICLES<br>Productivity, health, sleep &amp; more...
    image: assets/media/bg/articles.jpg

links-footer: true #false
  # - title: Title
  #   icon: fab fa-instagram
  #   url: /articles
  #   newtab: true #false

# show-corner: true #false

---

{% include yt id=page.youtube %}

---

# Links

{% include col1 %}

<a href="https://iaco.io" class="modal">modal</a>

{% include col2 %}

[youtube](https://youtu.be/b-ck-9d9haI)

{% include col3 %}

[vimeo](https://vimeo.com/524933864)

{% include colend %}

# Gallery

{% raw %}{% include gallery folder="/assets/media/articles/30medium-" %}{% endraw %}

{% include gallery folder="/assets/media/articles/30medium-" %}

<!-- Start Chat:
<form action="https://duck.us12.list-manage.com/subscribe/post" method="POST" target="_blank">
  <input type="hidden" name="u" value="15b04556891fe8b87dc4d1344">
  <input type="hidden" name="id" value="6f1f656e7c">
  <input type="hidden" name="TICKET" id="ticket">

  <input type="email" autocapitalize="none" autocorrect="off" name="EMAIL" placeholder="&#xF0E0;  E-mail">
  <input type="text" name="FNAME" placeholder="&#xF007;  Name">
  <textarea type="text" name="MSG" placeholder="&#xF075;  Message..."></textarea>
  <input type="submit" class="button full" name="submit" value="Send Message">
  <input type="submit" class="button primary large" name="submit" value="Send Message">
  <input type="submit" class="button secondary large full" name="submit" value="Send Message">
</form>
<script>
  document.getElementById("ticket").value = "IACO.io Chat Ticket " + new Date().toISOString();
</script> -->

{% comment %}

- TOC
{:toc}

{% endcomment %}

# `#` Title 1 `{#anchor}`

## `##` Title 2 `{#anchor}`

### `###` Title 3 `{#anchor}`

<details markdown="1">
<summary>Template of a large text on a details-summary HTML tag that opens and closes with mouse click, and can be used for FAQs, better organising content, etc.</summary>
Text text text text text text text text text text text text text text text text text text text text text text text text text text text text text text text text text text text text text

Text text text text text text text text text text text text text text text text text text text text text text text text text text text text text text text text text text text text text
</details>


```
{% raw %}<details markdown="1">
<summary>Title</summary>
Text
</details>{% endraw %}
```

{% include coll %}
Column left
```
{% raw %}{% include coll %}{% endraw %}
left text
{% raw %}{% include colr %}{% endraw %}
right text
{% raw %}{% include colend %}{% endraw %}
```
{% include colr %}
Column right
{% include colend %}

{% include col1 %}
Column One
```
{% raw %}{% include col1 %}{% endraw %}
first text
{% raw %}{% include col2 %}{% endraw %}
second text
{% raw %}{% include col3 %}{% endraw %}
third text
{% raw %}{% include colend %}{% endraw %}
```
{% include col2 %}
Column Two
{% include col3 %}
Column Three
{% include colend %}

`[link]``(url)` [link](/) | `[link <a-out/>]``(url)` [link <a-out/>](https://iaco.io)
`*` text *italic* text `*` | `**` text **bold** text `**`
`***` text ***highlight*** text `***` | `~~` text ~~strike~~ text `~~`
< hr > `---` | `` ` `` `code` `` ` ``

> `>` Quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote

```` ``` ```` `↵` `block` `↵` ```` ``` ````
```
block
```

- list with dots
- starts with `-` or `*`

1. list with numbers
1. starts with `1.`

---

Input:

`<input type="text" name="name" placeholder=" &#xF007; Name"/>`

<input type="text" name="name"  placeholder=" &#xF007; Name"/>
<input type="text" name="email" placeholder=" &#xF0E0; E-mail"/>
<input type="text" name="msg"   placeholder=" &#xF007; class += full" class="full"/>

Textarea:

`<textarea type="text" name="msg" placeholder="&#xF075;  Message..."></textarea>`

<textarea type="text" name="msg" placeholder="&#xF075;  Message..."></textarea>
<textarea type="text" name="msg" class="full" placeholder="&#xF075;  class += full"></textarea>

Button:

`<a href="/" class="button">Button a</a>`

`<input type="submit" class="button" name="submit" value="Button input">`

<a href="/" class="button">Button a</a>
<input type="submit" name="submit" class="button" value="Button input">
<input type="submit" name="submit" class="button primary" value="class += primary">
<input type="submit" name="submit" class="button primary large" value="class += primary large">
<input type="submit" name="submit" class="button secondary small full" value="class += secondary small full">

Button with big icon:

`<a class="button secondary large" href="/youtube/join" target="_blank"><i class="fab fa-youtube fa-2x middle"></i> Subscribe</a>`

<a class="button secondary large" href="/youtube/join" target="_blank"><i class="fab fa-youtube fa-2x middle"></i> Subscribe</a>

---

Image:

`{% raw %}{% include img src="assets/media/bg/default.jpg" title="Title text" %}{% endraw %}`

{% include img src="assets/media/bg/default.jpg" title="Title text" %}

YouTube Video:

`{% raw %}{% include yt id="" %}{% endraw %}`

{% include yt id="b-ck-9d9haI" %}

---

`{% raw %}{% include showroom url="/yt" newtab=true image="assets/media/logos/youtube.jpg" title="YouTube" %}{% endraw %}`

{% include showroom url="/ig" newtab=true image="assets/media/logos/instagram.jpg" title="Instagram" %}
{% include showroom url="/yt" newtab=true image="assets/media/logos/youtube.jpg" title="YouTube" %}
{% include showroom url="/yt" newtab=true image="assets/media/logo/power.png" title="YouTube2" %}

<!--
ig: B1OwTHPiG5M
tiktok: 6801989263727578373
-->

{% include newsletter %}
