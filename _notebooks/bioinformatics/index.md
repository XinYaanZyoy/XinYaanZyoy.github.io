---
layout: default
title: Bioinfromatics
permalink: /bioinformatics/
---

# Bioinformatics

{% for file in site.notebooks %}
  {% if file.path contains "/_notebooks/bioinformatics/notes" %}
  {% assign filenameparts = file.path | split: "/" %}
  {% assign filename = filenameparts | last | replace: file.extname,"" %}
    [filename]({{ file.path | relative_url }})
  {% endif %}
{% endfor %}

[1.1](/notes/week1/1.1.md)
