---
layout: default
permalink: /home-tab/
# featured: true
# hidden: true

author: iaco
# image: default-bg.jpg
home-icon: false

pre-title: ""
title: Home Tab
title-bg: false
description: ""

# categories: [ a, b ]
# tags: [ c, d, e ]

links-side: false

home-fullscreen: true

links-home: false

show-main: false
links-gallery: false
links-footer: false
show-corner: false

---

<style>
.overlay { background-color: var(--fg) !important; }
.gradient-overlay { display: none; }
.home-content-table { background: none; }
.home-bottom-text li > *,
.home-bottom-text > * {
  color: var(--bg) !important;
  text-shadow: none !important;
}
</style>

<script>
  const queryString = window.location.search;
  const urlParams = new URLSearchParams(queryString);
  $('h1').html(urlParams.get('title'));
  $('title').html('••' + urlParams.get('title'));
</script>
