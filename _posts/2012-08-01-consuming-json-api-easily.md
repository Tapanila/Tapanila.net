---
layout: post
title: Consuming Json API easy
date: 2012-08-01 09:00
author: Teemu
comments: true
categories: [Json, Nuget, Visual Studio 2012 RC, Windows 8, Windows 8, WinRT, wordpress]
---
These days there exists huge amount of API's. One of the most used formatting is JSON.
Consuming JSON with .net is kinda easily but to get full support of intellisense require developer to create classes that match the data provided.
[Jonathan Keith](http://jonkeith.com/) published nice tool called [json2csharp](http://json2csharp.com/) which you can use for that.
I will show you how to consume JSON API of my blog.
<!--more-->

1. Create a new Blank Metro App

   ![Creating Blank Metro Project Json](https://res.cloudinary.com/tapanila-net/image/upload/h_207,w_300/v1388360801/CreatingBlankMetroProjectJSON_ixpaz8.png)

2. Open browser and browse to your json source

   ![Tapanila Blog JSON](https://res.cloudinary.com/tapanila-net/image/upload/h_243,w_300/v1388360799/TapanilaBlogJSON_onb2j7.png)
 
3. Open another tab and browse to  http://json2csharp.com/, copy-paste all of the json and click Generate

   ![Json to CSharp](https://res.cloudinary.com/tapanila-net/image/upload/h_300,w_164/v1388360798/JSON2CSHARP_lnxrcp.png)
 
4. Create a new class in visual studio and name it helper.cs

   ![Create new class](https://res.cloudinary.com/tapanila-net/image/upload/h_300,w_277/v1388360796/CreateNewClass_ttpuvi.png)
 
5. On helper.cs replace class helper with all of the code from json2chsarp page

   ![Helper Class](https://res.cloudinary.com/tapanila-net/image/upload/h_300,w_117/v1388360795/HelperClass_fpmyht.png)
 
6. Open NuGet manager and install Json.NET

   ![Nuget JSON.net](https://res.cloudinary.com/tapanila-net/image/upload/h_193,w_300/v1388360794/NugetJsonNET_mf7yah.png)
 
7. Edit MainPage.xaml.cs

   {% gist 2cd58f941fa1e2727ffc %}

That is it. You are done!

Now you can start consuming json API without much effort.
