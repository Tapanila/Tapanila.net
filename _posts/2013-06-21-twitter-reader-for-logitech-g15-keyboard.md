---
layout: post
title: Twitter reader for Logitech G15 keyboard
date: 2013-06-21 19:16
author: Teemu
comments: true
categories: [G15, Json, Nuget, Windows Azure, Windows Azure Mobile Services]
---
I created Twitter reader for Logitech G15 Keyboard.
<!--more-->Logitech G15 is keyboard with nice LCD (160x43 pixels) on it. I created the reader for this using Windows Azure Mobile Services as backend. I used it because I already had all of the necessary code ready from <a title="Creating Twitter reader using Windows Azure Mobile Services" href="http://www.tapanila.net/creating-twitter-reader-using-windows-azure-mobile-services/">previous project</a> and it was very easy to use it.

.net wrapper and sample template that I used are from <a href="http://www.mangareader.com/dmclglcd.html">Minute Made Software</a>. I also created <a href="http://nuget.org/packages/LogitechG15/">nugget package</a> for easier use in future. Note that whole solution can be downloaded from bottom of the post.

Two screenshots about end product
<a href="https://res.cloudinary.com/tapanila-net/image/upload/v1388360477/WP_20130621_002_qsuksw.jpg"><img class="alignnone  wp-image-3611" alt="Logitech G15 and Samsung Slate" src="https://res.cloudinary.com/tapanila-net/image/upload/v1388360477/WP_20130621_002_qsuksw.jpg" width="717" height="403" /></a>

<a href="https://res.cloudinary.com/tapanila-net/image/upload/v1388360476/WP_20130621_006_vpj0zj.jpg"><img class="alignnone  wp-image-3621" alt="Logitech G15 lcd" src="https://res.cloudinary.com/tapanila-net/image/upload/v1388360476/WP_20130621_006_vpj0zj.jpg" width="717" height="403" /></a>

Backend:
<script type="text/javascript" src="https://gist.github.com/tapanila/5832223.js"></script>Client:<script type="text/javascript" src="https://gist.github.com/tapanila/5832279.js"></script>
<a href="http://www.tapanila.net/wp-content/uploads/2013/06/G15-Twitter-Reader.rar">Whole solution</a>
