---
layout: post
title: Sending text message from WCF service
date: 2012-08-19 15:36
author: Teemu
comments: true
categories: [Nuget, Tools, Visual Studio 2012 RC, WCF]
---
Sending text messages from application are expensive and very hard to do? Nope.
It's cheap and even too easy to do. I will show how to do it using <a href="https://www.twilio.com/" target="_blank">Twilio</a>

<!--more-->

Start by creating new WCF service project. Remember to choose .net Framework 4.0
<a href="http://res.cloudinary.com/tapanila-net/image/upload/v1388360870/CreateNewWCFServiceProject1_ifqzip.png"><img class="alignnone size-medium wp-image-98" title="CreateNewWCFServiceProject" src="http://res.cloudinary.com/tapanila-net/image/upload/h_207,w_300/v1388360870/CreateNewWCFServiceProject1_ifqzip.png" alt="" width="300" height="207" /></a>

Open package management console

<a href="http://res.cloudinary.com/tapanila-net/image/upload/v1388360855/OpenNuGet_xomu4s.png"><img class="alignnone size-medium wp-image-146" title="OpenNuGet" src="http://res.cloudinary.com/tapanila-net/image/upload/h_167,w_300/v1388360855/OpenNuGet_xomu4s.png" alt="" width="300" height="167" /></a>

Search and install Twilio
<a href="http://res.cloudinary.com/tapanila-net/image/upload/v1388360707/AddReferenceTwilio_cm9pe9.png"><img class="alignnone size-medium wp-image-391" title="AddReferenceTwilio" src="http://res.cloudinary.com/tapanila-net/image/upload/h_194,w_300/v1388360707/AddReferenceTwilio_cm9pe9.png" alt="" width="300" height="194" /></a>

Edit Service1.svc.cs
<p><script src="https://gist.github.com/3394618.js?file=gistfile1.cs"></script></p>
Edit IService1.cs
<p><script src="https://gist.github.com/3394622.js?file=gistfile1.cs"></script></p>
Published WCF service can be found from <a href="http://tapanilablog.azurewebsites.net/Service1.svc">here</a>.
Twilio trial account is free and you don't need to have a credit card to get it.
So go and get it now and have fun playing with it!
