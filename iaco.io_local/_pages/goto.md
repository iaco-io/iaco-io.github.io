---
layout: default
permalink: /goto/

author: iaco

pre-title: "Tool"
title: "Open URL"
description: ""

---

<input type="text" id="urlInput" placeholder="Enter a URL" />

<button id="generateLink">Generate Link</button>

<div id="linkContainer"></div>

<script>
    document.getElementById('generateLink').addEventListener('click', function() {
        const urlInput = document.getElementById('urlInput').value;
        const linkContainer = document.getElementById('linkContainer');

        // Clear previous links
        linkContainer.innerHTML = '';

        // Validate the URL
        if (urlInput) {
            const link = document.createElement('a');
            link.href = urlInput;
            link.textContent = 'Click here to visit the link';
            link.target = '_blank'; // Open link in a new tab

            linkContainer.appendChild(link);
        } else {
            linkContainer.textContent = 'Please enter a valid URL.';
        }
    });
</script>