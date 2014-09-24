---
layout: post
title: MVC 4 Scoped OAuth client for Facebook
date: 2013-06-02 15:58
author: Teemu
comments: true
categories: [ASP.net, Facebook, MVC4, Nuget, OAuth, Web]
---
Sometimes you might need special permissions right from start on your web application. Default MVC 4 OAuth clients only ask basic permissions and you can't change that behavior unless you create your own OAuth client. I did that for Facebook and later on will continue with other providers when needed

<!--more-->You can find the source code from <a href="https://github.com/tapanila/MVCScopedClient">here</a>

Here's the guide how to use it:
<ol>
	<li>Create new MVC 4 web application
<a href="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360574/CreateProjectMVC4_2_jvtvdf.png"><img class="alignnone size-full wp-image-3111" alt="CreateProjectMVC4_2" src="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360574/CreateProjectMVC4_2_jvtvdf.png" width="955" height="660" /></a></li>
	<li>Open package manager console
<a href="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360572/PackageManagerConsole_mbgi9s.png"><img class="alignnone size-full wp-image-3121" alt="Package Manager Console" src="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360572/PackageManagerConsole_mbgi9s.png" width="684" height="671" /></a></li>
	<li>Write "Install-Package MVCScopedClient"
<a href="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360571/Install-package-MVCScopedClient_wgaqkv.png"><img class="alignnone size-full wp-image-3131" alt="Install-package MVCScopedClient" src="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360571/Install-package-MVCScopedClient_wgaqkv.png" width="1222" height="290" /></a></li>
	<li>Open authconfig.cs
<a href="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360569/AuthConfig_cs_1_lthocd.png"><img class="alignnone size-full wp-image-3151" alt="AuthConfig.cs" src="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360569/AuthConfig_cs_1_lthocd.png" width="1249" height="517" /></a></li>
	<li>Write
Using MVCScopedClients;</li>
	<li>Add this line to RegisterAuth() function
OAuthWebSecurity.RegisterClient(new FacebookScopedClient("API-key", "API-secret", "PermissionScope"), "Facebook", new Dictionary&lt;string, object&gt;());
<a href="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360567/AuthConfig-Completed_v8bhc1.png"><img class="alignnone size-full wp-image-3161" alt="AuthConfig Completed" src="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360567/AuthConfig-Completed_v8bhc1.png" width="1142" height="531" /></a></li>
	<li>Done</li>
</ol>
