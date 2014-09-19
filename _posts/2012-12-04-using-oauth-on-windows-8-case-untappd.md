---
layout: post
title: Using OAuth on Windows 8 case Untappd
date: 2012-12-04 07:00
author: Teemu
comments: true
categories: [OAuth, Untappd, Windows 8, Windows 8, WinRT]
---
<a href="https://untappd.com/">Untappd</a> is nice service. But what makes it AWESOME is that they started to use OAuth on their API since V4 of API.<!--more--> To get access into Untappd API you need to request access from <a href="https://untappd.com/api/">here</a>. When filling that form callback url you can put "http://localhost/" to that field.

Here's the code for your Windows 8 application. Just put your own Client Id and Client secret into it.
<script type="text/javascript" src="https://gist.github.com/4185689.js"></script>
