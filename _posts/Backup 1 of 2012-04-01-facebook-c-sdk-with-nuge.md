---
layout: post
title: Facebook C# now with Nuget
date: 2012-04-01 21:10
author: Teemu
comments: true
categories: [Facebook, Nuget, Windows Phone 7]
---
Facebook C# SDK was <a href="http://csharpsdk.org/">moved</a> from <a href="http://facebooksdk.codeplex.com/">codeplex</a> into <a href="https://github.com/facebook-csharp-sdk/facebook-csharp-sdk/">github</a> and at the same time they started to distribute the binary libraries with <a href="http://nuget.codeplex.com/">Nuget</a>.

<!--more-->NuGet is a free developer focused package management system. It simplifies the process of using third party libraries.
Download it from <a href="http://visualstudiogallery.msdn.microsoft.com/27077b70-9dad-4c64-adcf-c7cf6bc9970c/file/37502/19/NuGet.Tools.vsix">here</a>

After you have installed the Nuget just start visual studio normally.
Then create a new project "FacebookJoinGroup"
Choose Tools -&gt; Library Package Manager -&gt; Package Manager Console
<a href="http://tapanila.azurewebsites.net/wp-content/uploads/2012/03/NugetMenuVS2010.png"><img class="alignnone size-medium wp-image-19" title="NugetMenuVS2010" src="http://res.cloudinary.com/tapanila-net/image/upload/h_279,w_300/v1388361127/NugetMenuVS2010_brkavc.png" alt="" width="300" height="279" /></a>
New window should show somewhere looking like this

<a href="http://tapanila.azurewebsites.net/wp-content/uploads/2012/04/Package-Manager-Console.png"><img class="alignnone size-medium wp-image-24" title="Package Manager Console" src="http://res.cloudinary.com/tapanila-net/image/upload/h_123,w_300/v1388361126/Package-Manager-Console_g4nzl1.png" alt="" width="300" height="123" /></a>
Now just enter this command into the console "Install-Package Facebook"

<a href="http://tapanila.azurewebsites.net/wp-content/uploads/2012/04/Install-Facebook.png"><img class="alignnone size-medium wp-image-25" title="Install Facebook" src="http://res.cloudinary.com/tapanila-net/image/upload/h_58,w_300/v1388361026/Install-Facebook_p3ezgt.png" alt="" width="300" height="58" /></a>
After that it automatically downloads newest version of the library and add it as a reference to your project. Now you can continue developing like before.

P.S. There was many changes in V6 so any example that have been published here aren't working anymore.
I will be creating a new ones with SDK V6.
