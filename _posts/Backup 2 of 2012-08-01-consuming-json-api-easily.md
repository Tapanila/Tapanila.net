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
<a href="http://jonkeith.com/">Jonathan Keith</a> published nice tool called <a href="http://json2csharp.com/">json2csharp</a> which you can use for that.
I will show you how to consume JSON API of my blog.
<!--more-->
<ol>
	<li> Create a new Blank Metro App
<a href="http://tapanila.azurewebsites.net/wp-content/uploads/2012/08/CreatingBlankMetroProjectJSON.png"><img class="alignnone size-medium wp-image-156" title="CreatingBlankMetroProjectJSON" src="https://res\.cloudinary\.com/tapanila-net/image/upload/h_207,w_300/v1388360801/CreatingBlankMetroProjectJSON_ixpaz8.png" alt="" width="300" height="207" /></a></li>
	<li>Open browser and browse to <a href="http://tapanila.net/api/get_recent_posts/?dev=1">http://tapanila.net/api/get_recent_posts/?dev=1
</a><a href="http://tapanila.azurewebsites.net/wp-content/uploads/2012/08/TapanilaBlogJSON.png"><img class="alignnone size-medium wp-image-157" title="TapanilaBlogJSON" src="https://res\.cloudinary\.com/tapanila-net/image/upload/h_243,w_300/v1388360799/TapanilaBlogJSON_onb2j7.png" alt="" width="300" height="243" /></a></li>
	<li>Open another tab and browse to  <a href="http://json2csharp.com/">http://json2csharp.com/</a>, copy-paste all of the json and click Generate
<a href="http://tapanila.azurewebsites.net/wp-content/uploads/2012/08/JSON2CSHARP.png"><img class="alignnone size-medium wp-image-158" title="JSON2CSHARP" src="https://res\.cloudinary\.com/tapanila-net/image/upload/h_300,w_164/v1388360798/JSON2CSHARP_lnxrcp.png" alt="" width="164" height="300" /></a></li>
	<li> Create a new class in visual studio and name it helper.cs
<a href="http://tapanila.azurewebsites.net/wp-content/uploads/2012/08/CreateNewClass.png"><img class="alignnone size-medium wp-image-167" title="CreateNewClass" src="https://res\.cloudinary\.com/tapanila-net/image/upload/h_300,w_277/v1388360796/CreateNewClass_ttpuvi.png" alt="" width="277" height="300" /></a></li>
	<li>On helper.cs replace class helper with all of the code from json2csharp page
<a href="http://tapanila.azurewebsites.net/wp-content/uploads/2012/08/HelperClass.png"><img class="alignnone size-medium wp-image-168" title="HelperClass" src="https://res\.cloudinary\.com/tapanila-net/image/upload/h_300,w_117/v1388360795/HelperClass_fpmyht.png" alt="" width="117" height="300" /></a></li>
	<li>Open NuGet manager and install Json.NET
<a href="http://tapanila.azurewebsites.net/wp-content/uploads/2012/08/NugetJsonNET.png"><img class="alignnone size-medium wp-image-169" title="NugetJsonNET" src="https://res\.cloudinary\.com/tapanila-net/image/upload/h_193,w_300/v1388360794/NugetJsonNET_mf7yah.png" alt="" width="300" height="193" /></a></li>
	<li>Edit MainPage.xaml.cs</li>
</ol>
[sourcecode language="csharp"]
using System;
using System.Net.Http;
using Newtonsoft.Json;
using Windows.UI.Xaml;
using Windows.UI.Xaml.Controls;
namespace TapanilaBlogJSON
{
    public sealed partial class MainPage : Page
    {
        public MainPage()
        {
            this.InitializeComponent();
            this.Loaded += MainPage_Loaded;
        }

        void MainPage_Loaded(object sender, RoutedEventArgs e)
        {
            consumeJson();
        }
        async void consumeJson()
        {
            var httpClient = new HttpClient();
            var jsonSource = new Uri(&quot;http://tapanila.net/api/get_recent_posts/?dev=1&quot;);
            var response = await httpClient.GetAsync(jsonSource);
            var json = await response.Content.ReadAsStringAsync();
            RootObject jsonObject = JsonConvert.DeserializeObject&lt;RootObject&gt;(json);
            foreach (var post in jsonObject.posts)
            {
                var title = post.title;
            }
        }
    }
}
[/sourcecode]

That is it. You are done!

Now you can start consuming json API without much effort.
