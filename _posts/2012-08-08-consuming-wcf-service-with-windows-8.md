---
layout: post
title: Consuming WCF service with Windows 8
date: 2012-08-08 10:00
author: Teemu
comments: true
categories: [Visual Studio 2012 RC, WCF, Windows 8, Windows 8, Windows Azure Websites, WinRT]
---
The reason why I have been writing so much about creating WCF services is that they are very easy to consume and use on Windows 8 application.
So I will show you how to create Windows 8 application that uses the WCF service that was created <a title="Publishing WCF service that uses Blob Storage into Windows Azure Websites" href="http://tapanila.net/publishing-wcf-service-that-uses-blob-storage-into-windows-azure-websites/">here</a>.

<!--more-->
<ol>
	<li>Create new Windows Metro style Blank App
<a href="http://tapanila.azurewebsites.net/wp-content/uploads/2012/08/CreatingBlankMetroProjectWCF.png"><img class="alignnone size-medium wp-image-244" title="CreatingBlankMetroProjectWCF" src="https://res.cloudinary.com/tapanila-net/image/upload/h_207,w_300/v1388360713/CreatingBlankMetroProjectWCF_pfdspr.png" alt="" width="300" height="207" /></a></li>
	<li>Right click project and choose Add Service Reference...
<a href="http://tapanila.azurewebsites.net/wp-content/uploads/2012/08/AddServiceReference.png"><img class="alignnone size-medium wp-image-245" title="AddServiceReference" src="https://res.cloudinary.com/tapanila-net/image/upload/h_300,w_175/v1388360712/AddServiceReference_dtq5ka.png" alt="" width="175" height="300" /></a></li>
	<li>On Address textbox put your WCF service url.
I used <a href="http://tapanilablog.azurewebsites.net/Service1.svc">http://tapanilablog.azurewebsites.net/Service1.svc</a> and click Go and then OK
<a href="http://tapanila.azurewebsites.net/wp-content/uploads/2012/08/AddServiceReferenceSearched.png"><img class="alignnone size-medium wp-image-246" title="AddServiceReferenceSearched" src="https://res.cloudinary.com/tapanila-net/image/upload/h_243,w_300/v1388360711/AddServiceReferenceSearched_lqs3r6.png" alt="" width="300" height="243" /></a></li>
	<li>Edit MainPage.xaml.cs</li>
<script src="https://gist.github.com/3292930.js"> </script>
	<li>Done!</li>
</ol>
