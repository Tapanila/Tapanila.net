---
layout: post
title: Consuming WCF Service with Windows Phone
date: 2012-08-10 09:54
author: Teemu
comments: true
categories: [Visual Studio 2010, WCF, Windows Phone 7, Windows Phone 7.5]
---
The reason why I have been writing so much about creating WCF services is that they are very easy to consume and use on Windows Phone application.
So I will show you how to create Windows Phone application that uses the WCF service that was created <a title="Publishing WCF service that uses Blob Storage into Windows Azure Websites" href="http://tapanila.net/publishing-wcf-service-that-uses-blob-storage-into-windows-azure-websites/">here</a>.

<!--more-->
<ol>
	<li>Create new Windows Phone application
<a href="http://tapanila.azurewebsites.net/wp-content/uploads/2012/08/CreateNewWP7Project.png"><img class="alignnone size-medium wp-image-253" title="CreateNewWP7Project" src="https://res.cloudinary.com/tapanila-net/image/upload/h_189,w_300/v1388360709/CreateNewWP7Project_uwyckc.png" alt="" width="300" height="189" /></a></li>
	<li>Right click project and choose Add Service Reference
<a href="http://tapanila.azurewebsites.net/wp-content/uploads/2012/08/AddServiceReference1.png"><img class="alignnone size-medium wp-image-254" title="AddServiceReference" src="https://res.cloudinary.com/tapanila-net/image/upload/h_163,w_300/v1388360708/AddServiceReference1_nyqbke.png" alt="" width="300" height="163" /></a></li>
	<li>On Address textbox put your WCF service url.
I used <a href="http://tapanilablog.azurewebsites.net/Service1.svc">http://tapanilablog.azurewebsites.net/Service1.svc</a> and click Go and then OK
<a href="http://tapanila.azurewebsites.net/wp-content/uploads/2012/08/AddServiceReferenceSearched.png"><img class="alignnone size-medium wp-image-246" title="AddServiceReferenceSearched" src="https://res.cloudinary.com/tapanila-net/image/upload/h_243,w_300/v1388360711/AddServiceReferenceSearched_lqs3r6.png" alt="" width="300" height="243" /></a></li>
	<li>Edit MainPage.xaml.cs</li>
        <p><script src="https://gist.github.com/3311973.js"> </script></p>
	<li>Done!</li>
</ol>
