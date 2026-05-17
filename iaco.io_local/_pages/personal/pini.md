---
layout: default
permalink: /pini/

author: iaco
image: rain.gif

show-logo: false
links-side: false

links-home: false
show-main: false
links-gallery: false
links-footer: false
show-corner: false

---

<style>
  #home { background-size: 100% 100% !important; }
  .overlay { display: none !important; }
  .gradient-overlay { display: none !important; }
  .home-content-table { display: none !important; }
</style>

<script>
  window.onclick = () => { var player = $('#bg-audio')[0]; player.paused ? player.play() : player.pause(); document.body.requestFullscreen(); }
</script>

<audio src="{{ site.baseurl }}/assets/media/rain.mp3" id="bg-audio" autoplay loop />
