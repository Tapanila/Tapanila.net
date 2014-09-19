---
layout: post
title: Creating Twitter reader using Windows Azure Mobile Services
date: 2013-06-15 20:57
author: Teemu
comments: true
categories: [Git, Javascript, Json, NPM, Windows Azure, Windows Azure, Windows Azure Mobile Services]
---
You can now easily create twitter reader using Windows Azure Mobile Services features custom API, Git support and NPM (Node Package Manager) support
<!--more-->
<ol>
	<li>Create new mobile service (You can use free 20 MB SQL database)
<a href="http://res.cloudinary.com/tapanila-net/image/upload/v1388360560/Create-new-windows-azure-mobile-service_darelu.png"><img class="alignnone  wp-image-3311" alt="Create new windows azure mobile service" src="http://res.cloudinary.com/tapanila-net/image/upload/v1388360560/Create-new-windows-azure-mobile-service_darelu.png" width="645" height="388" /></a></li>
	<li>Choose Database details
<a href="http://res.cloudinary.com/tapanila-net/image/upload/v1388360561/Create-new-windows-azure-mobile-service-part-2_ke7x0d.png"><img class="alignnone  wp-image-3301" alt="Create new windows azure mobile service part 2" src="http://res.cloudinary.com/tapanila-net/image/upload/v1388360561/Create-new-windows-azure-mobile-service-part-2_ke7x0d.png" width="655" height="394" /></a></li>
	<li>Open the dashboard and click Set up source control
<a href="http://res.cloudinary.com/tapanila-net/image/upload/v1388360486/Windows-Azure-Mobile-Service-setup-source-control_ybmfl2.png"><img class="alignnone  wp-image-3431" alt="Windows Azure Mobile Service setup source control" src="http://res.cloudinary.com/tapanila-net/image/upload/v1388360486/Windows-Azure-Mobile-Service-setup-source-control_ybmfl2.png" width="655" height="394" /></a></li>
	<li>From bottom choose yes
<a href="http://res.cloudinary.com/tapanila-net/image/upload/v1388360565/confirm-source-control_lnp9yn.png"><img class="alignnone  wp-image-3281" alt="confirm source control" src="http://res.cloudinary.com/tapanila-net/image/upload/v1388360565/confirm-source-control_lnp9yn.png" width="655" height="394" /></a></li>
	<li>You can see the status on bottom bar
<a href="http://res.cloudinary.com/tapanila-net/image/upload/v1388360489/Wait-until-completed_zeapam.png"><img class="alignnone  wp-image-3421" alt="Wait until completed" src="http://res.cloudinary.com/tapanila-net/image/upload/v1388360489/Wait-until-completed_zeapam.png" width="655" height="394" /></a></li>
	<li>Go to Data tab while waiting
<a href="http://res.cloudinary.com/tapanila-net/image/upload/v1388360484/Windows-Azure-Mobile-Services-Data-Tab_xjtyjo.png"><img class="alignnone  wp-image-3441" alt="Windows Azure Mobile Services Data Tab" src="http://res.cloudinary.com/tapanila-net/image/upload/v1388360484/Windows-Azure-Mobile-Services-Data-Tab_xjtyjo.png" width="655" height="394" /></a></li>
	<li>Create new table and call it "tweets"
<a href="http://res.cloudinary.com/tapanila-net/image/upload/v1388360558/Creating-new-table-Tweets_afjaec.png"><img class="alignnone  wp-image-3321" alt="Creating new table Tweets" src="http://res.cloudinary.com/tapanila-net/image/upload/v1388360558/Creating-new-table-Tweets_afjaec.png" width="655" height="394" /></a></li>
	<li>Go to API tab
<a href="http://res.cloudinary.com/tapanila-net/image/upload/v1388360556/Custom-API-Tab_aji6ji.png"><img class="alignnone  wp-image-3331" alt="Custom API Tab" src="http://res.cloudinary.com/tapanila-net/image/upload/v1388360556/Custom-API-Tab_aji6ji.png" width="655" height="394" /></a></li>
	<li>Create new API and call it "tweets". Make sure that you put GET permission as everyone to make testing a lot easier.
<a href="http://res.cloudinary.com/tapanila-net/image/upload/v1388360563/Create-new-custom-API-tweets_nwxddk.png"><img class="alignnone  wp-image-3291" alt="Create new custom API tweets" src="http://res.cloudinary.com/tapanila-net/image/upload/v1388360563/Create-new-custom-API-tweets_nwxddk.png" width="655" height="394" /></a></li>
	<li>Go configure tab and click copy icon on GIT URL
<a href="http://res.cloudinary.com/tapanila-net/image/upload/v1388360566/Configure-GIT-URL_tcbj5i.png"><img class="alignnone  wp-image-3271" alt="Configure GIT URL" src="http://res.cloudinary.com/tapanila-net/image/upload/v1388360566/Configure-GIT-URL_tcbj5i.png" width="655" height="394" /></a></li>
	<li>Open PowerShell and navigate to folder you want and type "Git clone [Your url]"
<a href="http://res.cloudinary.com/tapanila-net/image/upload/v1388360550/PowerShell-Git-Clone_micjfz.png"><img class="alignnone  wp-image-3371" alt="PowerShell Git Clone" src="http://res.cloudinary.com/tapanila-net/image/upload/v1388360550/PowerShell-Git-Clone_micjfz.png" width="638" height="411" /></a></li>
	<li>Now you can open file explorer to that view by typing explorer .[your servicename]
<a href="http://res.cloudinary.com/tapanila-net/image/upload/v1388360483/Windows-Explorer-view_w8fvcu.png"><img class="alignnone  wp-image-3451" alt="Windows Explorer view" src="http://res.cloudinary.com/tapanila-net/image/upload/v1388360483/Windows-Explorer-view_w8fvcu.png" width="655" height="395" /></a></li>
	<li>Open tweets.js from your service/api folder
<a href="http://res.cloudinary.com/tapanila-net/image/upload/v1388360524/Tweet_js-on-file-explorer_a8nbgh.png"><img class="alignnone size-full wp-image-3401" alt="Tweet.js on file explorer" src="http://res.cloudinary.com/tapanila-net/image/upload/v1388360524/Tweet_js-on-file-explorer_a8nbgh.png" width="840" height="1010" /></a></li>
	<li>Edit with your favorite editor (I used Notepad++). Source code is at below for copy pasting.<a href="http://res.cloudinary.com/tapanila-net/image/upload/v1388360481/Tweet_js-on-notepad_u2d2hb.png"><img class="alignnone  wp-image-3491" alt="Tweet.js on notepad" src="http://res.cloudinary.com/tapanila-net/image/upload/v1388360481/Tweet_js-on-notepad_u2d2hb.png" width="655" height="394" /></a></li>
	<li>Navigate to service folder in your project and then write "npm install twit --save"
<a href="http://res.cloudinary.com/tapanila-net/image/upload/v1388360549/PowerShell-NPM-Install_tyjfg2.png"><img class="alignnone size-full wp-image-3381" alt="PowerShell NPM Install" src="http://res.cloudinary.com/tapanila-net/image/upload/v1388360549/PowerShell-NPM-Install_tyjfg2.png" width="530" height="140" /></a></li>
	<li>Write "Git add ." (Warnings are fine)
<a href="http://res.cloudinary.com/tapanila-net/image/upload/v1388360552/Powershell-Git-Add_xqi688.png"><img class="alignnone size-full wp-image-3361" alt="Powershell Git Add" src="http://res.cloudinary.com/tapanila-net/image/upload/v1388360552/Powershell-Git-Add_xqi688.png" width="802" height="928" /></a></li>
	<li>Write Git commit "Installed twit with NPM"
<a href="http://res.cloudinary.com/tapanila-net/image/upload/v1388360555/Git-Commit_ftyxw0.png"><img class="alignnone size-full wp-image-3341" alt="Git Commit" src="http://res.cloudinary.com/tapanila-net/image/upload/v1388360555/Git-Commit_ftyxw0.png" width="805" height="679" /></a></li>
	<li>Write Git push
<a href="http://res.cloudinary.com/tapanila-net/image/upload/v1388360553/Git-Push_pqawzn.png"><img class="alignnone size-full wp-image-3351" alt="Git Push" src="http://res.cloudinary.com/tapanila-net/image/upload/v1388360553/Git-Push_pqawzn.png" width="845" height="1008" /></a></li>
	<li>Test your site out by browsing <a href="http://tapanilatwitter.azure-mobile.net/api/tweets">http://tapanilatwitter.azure-mobile.net/api/tweets
{% gist 5788819 %}
</a></li>
</ol>
P.S. Whole solution can be found <a href="http://www.tapanila.net/wp-content/uploads/2013/08/tapanilatwitter.rar">Here</a>
