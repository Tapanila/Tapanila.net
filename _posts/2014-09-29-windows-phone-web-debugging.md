---
layout: post
title: Windows Phone Web Debugging
date: 2014-09-29 00:53
author: Teemu
comments: true
categories: [Windows Phone 8, Fiddler, Debugging]
---
Sometimes you need to see what kind of packages your Windows Phone is sending and receiving. This guide is going to show how to do that using free and my favourite tool called [Fiddler](http://www.telerik.com/fiddler)

1. Install [Fiddler](http://www.telerik.com/download/fiddler)
2. Start fiddler and open settings (Screenshot)
3. Go to "HTTPS" tab and make sure you have checked Capture and Decrypt checkboxes (Screenshot)
4. Go to "Connections" tab and check "Allow remote computers to connect" and change your listens on port to 8889 (Screenshot)
5. Check your computer ip address from connection icon (mine is 172.16.0.34)
5. Connect your phone to same network as your computer and then tap your wifi network name on wifi list (Screenshot)
7. Open your browser and go to web address 172.16.0.34:8889 (Replace with your ip) (Screenshot)
8. Click download the FiddlerRoot certificate (screenshot)
9. Click Open (screenshot)
10. Click Install (screenshot)
11. Click Ok (screenshot)
12. Go to your wifi list on settings and click the name of connected wifi network(screenshot)
13. Enable proxy and type your computer ip to server and 8889 to port (screenshot)
14. Open browser on phone and browse to tapanila.net (screenshot)
15. See the request on your computer at Fiddler (screenshot)
