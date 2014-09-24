---
layout: post
title: Getting started on Windows 8 Facebook application development
date: 2012-07-30 09:00
author: Teemu
comments: true
categories: [Facebook, Nuget, OAuth, Visual Studio 2012 RC, Windows 8, Windows 8, WinRT]
---
Facebook is one of the most fascinating source of data that I can think of.
Because it's always personalized  because you can get only your and your friends  data.
There's very easy way to use Facebook using <a href="http://csharpsdk.org/">Facebook C# SDK</a>
<!--more-->
<ol>
	<li> Start with creating new Blank App
<a href="http://tapanila.azurewebsites.net/wp-content/uploads/2012/07/CreatingBlankMetroProject.png"><img class="alignnone size-medium wp-image-141" title="CreatingBlankMetroProject" alt="" src="https://res\.cloudinary\.com/tapanila-net/image/upload/h_210,w_300/v1388360859/CreatingBlankMetroProject_vilqrm.png" width="300" height="210" /></a></li>
	<li>Open NuGet
<a href="http://tapanila.azurewebsites.net/wp-content/uploads/2012/07/OpenNuGet.png"><img class="alignnone size-medium wp-image-146" title="OpenNuGet" alt="" src="https://res\.cloudinary\.com/tapanila-net/image/upload/h_167,w_300/v1388360855/OpenNuGet_xomu4s.png" width="300" height="167" /></a></li>
	<li>Choose Online, search for Facebook and click Install
<a href="http://tapanila.azurewebsites.net/wp-content/uploads/2012/07/AddingFacebookSDKReferenceOnNuGet.png"><img class="alignnone size-medium wp-image-147" title="AddingFacebookSDKReferenceOnNuGet" alt="" src="https://res\.cloudinary\.com/tapanila-net/image/upload/h_200,w_300/v1388360804/AddingFacebookSDKReferenceOnNuGet_k4mnd5.png" width="300" height="200" /></a></li>
	<li>Now you can close the NuGet
<a href="http://tapanila.azurewebsites.net/wp-content/uploads/2012/07/FacebookSDKReferenceAdded.png"><img class="alignnone size-medium wp-image-148" title="FacebookSDKReferenceAdded" alt="" src="https://res\.cloudinary\.com/tapanila-net/image/upload/h_194,w_300/v1388360802/FacebookSDKReferenceAdded_smet5k.png" width="300" height="194" /></a></li>
	<li>Edit MainPage.xaml.cs</li>
</ol>
{% gist 8634623 %}

This example now opens you the webAuthentication control and if you enter your Facebook details it will parse the accessToken.
