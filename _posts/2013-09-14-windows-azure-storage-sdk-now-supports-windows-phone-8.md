---
layout: post
title: Windows Azure Storage SDK now supports Windows Phone 8
date: 2013-09-14 01:42
author: Teemu
comments: true
categories: [Nokia Developer, Nokia Developer Champions, Nuget, Windows Azure Storage, Windows Phone 8]
---
Windows Azure Storage team has released preview version of the SDK which supports Windows Phone 8

<!--more-->

This means that you can now directly use Windows Azure Storage features from your phone and there's no requirement to build API and publish it on Azure Websites. This is perfect for application where you want to store pictures or files.

Here's short tutorial how to use it in your Windows Phone app:
<ul>
	<li>Create new project
<a href="http://res.cloudinary.com/tapanila-net/image/upload/v1388360458/Create-Windows-Phone-8-Project_gc88b6.png"><img class="alignnone  wp-image-4091" alt="Create Windows Phone 8 Project" src="http://res.cloudinary.com/tapanila-net/image/upload/c_scale,q_100,w_601/v1388360458/Create-Windows-Phone-8-Project_gc88b6.png" width="601" height="383" /></a></li>
	<li>Open Package Manager Console
<a href="http://res.cloudinary.com/tapanila-net/image/upload/v1388360457/Package-Manager-Console_flviju.png"><img class="alignnone size-full wp-image-4101" alt="Package Manager Console" src="http://res.cloudinary.com/tapanila-net/image/upload/c_scale,q_100,w_600/v1388360457/Package-Manager-Console_flviju.png" width="600" height="413" /></a></li>
	<li>Install Windows Azure Storage client
<a href="http://res.cloudinary.com/tapanila-net/image/upload/v1388360456/Install-Windows-Azure-Storage-Preview_ebfvzu.png"><img class="alignnone size-full wp-image-4111" alt="Install Windows Azure Storage Preview" src="http://res.cloudinary.com/tapanila-net/image/upload/c_scale,q_100,w_600/v1388360456/Install-Windows-Azure-Storage-Preview_ebfvzu.png" width="600" height="193" /></a></li>
	<li>Edit MainPage.xaml.cs
{% gist 6556943 %}</li>
</ul>
Found this useful or want more complex example?
