---
layout: post
title: Sending emails easily from your Azure application
date: 2012-08-21 20:03
author: Teemu
comments: true
categories: [Nuget, SendGrid, Visual Studio 2012 RC, WCF, Windows Azure, Windows Azure, Windows Azure Websites]
---
When you host your application Azure you don't get SMTP server or any other mail services.
So you got 2 choices. 1) Host your own SMTP server or 2) Use SendGrid where you can get 25000 emails/month for free.
<!--more--> Start by registering for SendGrid in this <a href="http://sendgrid.com/azure.html">url</a>.
<a href="https://res.cloudinary.com/tapanila-net/image/upload/v1388360705/Azure-Landing-page_axaj1m.png"><img class="alignnone size-medium wp-image-441" title="Azure Landing page" src="https://res.cloudinary.com/tapanila-net/image/upload/h_166,w_300/v1388360705/Azure-Landing-page_axaj1m.png" alt="" width="300" height="166" /></a>

Fill in the form and create your account. (Doesn't require credit card).
It will take them a while to provision you an account. If you have any problems with provisioning don't hesitate to send email to help@sendgrid.com. They are very fast to fix your problem.
While it's provisioning create a new WCF application. Remember to choose .net 4.0
<a href="https://res.cloudinary.com/tapanila-net/image/upload/v1388360870/CreateNewWCFServiceProject1_ifqzip.png"><img class="alignnone size-medium wp-image-98" title="CreateNewWCFServiceProject" src="https://res.cloudinary.com/tapanila-net/image/upload/h_207,w_300/v1388360870/CreateNewWCFServiceProject1_ifqzip.png" alt="" width="300" height="207" /></a>

After that right click project and click manage nuget references
<a href="https://res.cloudinary.com/tapanila-net/image/upload/v1388360855/OpenNuGet_xomu4s.png"><img class="alignnone size-medium wp-image-146" title="OpenNuGet" src="https://res.cloudinary.com/tapanila-net/image/upload/h_167,w_300/v1388360855/OpenNuGet_xomu4s.png" alt="" width="300" height="167" /></a>

Then search for SendGrid and install it.
Now edit IService1.cs and Service1.svc
<p><script src="https://gist.github.com/3415704.js?file=gistfile1.cs"></script></p>
<p><script src="https://gist.github.com/3417306.js?file=gistfile1.cs"></script></p>
Now you can send emails easily from your Azure application.
You can find the published WCF service from <a href="http://tapanilablog.azurewebsites.net/Service1.svc">url</a>
