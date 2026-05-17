---
layout: default
permalink: /cmd/insa-lawa/

author: iaco
image: assets/media/bg/skyby-regn.gif
home-icon:
  top: false
  middle: false

pre-title: ""
title: <tok>insa-lawa</tok>
title-bg: false
description: "<tok>oki</tok> do 1 story (<tok>pomotolo</tok>15') <br> <tok>oki</tok> schedule 1 post-reel (<tok>unu</tok>~17:30) <br> <tok>oki</tok> write 2 ❡ of article (<tok>suwi</tok>)"
post-description: "
    <style type='text/css'>table td{text-align:center; border-color:dimgray; border-style:solid; border-width:1px; font-size:11.5px;}</style>
    <table>
      <tr>
        <td>b | lør</td>
        <td>d | søn</td>
        <td>a | man</td>
        <td>e | tir</td>
        <td>i | ons</td>
        <td>o | tor</td>
        <td>u | fre</td>
      </tr>
      <tr>
        <td>leisure ócio calm relax</td>
        <td>productivity for next week</td>
        <td>inspiration habits check</td>
        <td colspan='2'>tips défis quiz interact answer with stories</td>
        <td>#tbt nostalgia saudades</td>
        <td>be re-shared: use noe+tag</td>
      </tr>
    </table>
  "

links-side: false

home-fullscreen: true

links-home:
  - title: <tok>tomo-lawa tan^</tok>
    icon: fas fa-level-down-alt fa-rotate-90
    url: /cmd
    newtab: false
    show-home: true
    show-side: false
  - title: <tok>telo musi</tok>
    url: javascript:var a = document.getElementById('bg-audio'); if(a.paused){ a.play(); }else{ a.pause(); }
    icon: fas fa-cloud-showers-heavy
    newtab: false
    show-home: true
    show-side: false

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
  $('#home h2').each(function() {
    $(this).html(
      "<span onclick='$(this).toggleClass(\"gray\");'>" +
      $(this).html().replace(/<br><br>/g, "<br>").replace(/<br>/g, "</span></br></br><span onclick='$(this).toggleClass(\"gray\");'>") +
      "</span>"
    );
  });
  //window.onclick = () => { $('#bg-audio')[0].play(); window.onclick = null; }
</script>

<audio src="{{ site.baseurl }}/assets/media/rain.mp3" id="bg-audio" loop />
