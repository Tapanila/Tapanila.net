---
layout: post
title: Windows Azure Mobile Services Custom API for existing SQL Database
date: 2013-06-24 18:00
author: Teemu
comments: true
categories: [Javascript, Json, SQL database, Windows Azure, Windows Azure, Windows Azure Mobile Services]
---
Sometimes you have existing SQL database where you would like to expose some custom queries results
<!--more-->

So there's existing SQL database that has two tables Person and Orders. Custom API needs to query them with a parameter that's given and then return result as JSON.
<ol>
	<li>Create new Mobile Service and choose use exising SQL database
<a href="http://res.cloudinary.com/tapanila-net/image/upload/v1388360468/Create-new-Windows-Azure-Mobile-Service-using-existing-database_nkypll.png"><img class="alignnone size-full wp-image-3761" alt="Create new Windows Azure Mobile Service using existing database" src="http://res.cloudinary.com/tapanila-net/image/upload/c_scale,q_100,w_600/v1388360468/Create-new-Windows-Azure-Mobile-Service-using-existing-database_nkypll.png" width="600" height="399" /></a></li>
	<li>Fill in your username and password
<a href="http://res.cloudinary.com/tapanila-net/image/upload/v1388360469/Create-new-Windows-Azure-Mobile-Service-using-existing-database-2_qsub1b.png"><img class="alignnone size-full wp-image-3751" alt="Create new Windows Azure Mobile Service using existing database 2" src="http://res.cloudinary.com/tapanila-net/image/upload/c_scale,q_100,w_600/v1388360469/Create-new-Windows-Azure-Mobile-Service-using-existing-database-2_qsub1b.png" width="600" height="398" /></a></li>
	<li>Open your new mobile service and go to API tab
<a href="http://res.cloudinary.com/tapanila-net/image/upload/v1388360471/Windows-Azure-Mobile-Service-API-tab_mfd1sp.png"><img class="alignnone  wp-image-3741" alt="Windows Azure Mobile Service API tab" src="http://res.cloudinary.com/tapanila-net/image/upload/c_scale,q_100,w_600/v1388360471/Windows-Azure-Mobile-Service-API-tab_mfd1sp.png" width="600" height="178" /></a></li>
	<li>Create new API and set GET Permission to everyone (for easy testing)
<a href="http://res.cloudinary.com/tapanila-net/image/upload/v1388360472/Windows-Azure-Mobile-Service-new-Custom-API_sk1uao.png"><img class="alignnone size-full wp-image-3731" alt="Windows Azure Mobile Service new Custom API" src="http://res.cloudinary.com/tapanila-net/image/upload/c_scale,q_100,w_600/v1388360472/Windows-Azure-Mobile-Service-new-Custom-API_sk1uao.png" width="600" height="520" /></a></li>
	<li>Edit the script (Code can be find below) and save it
<a href="http://res.cloudinary.com/tapanila-net/image/upload/v1388360474/Windows-Azure-Mobile-Service-API-javascript_cv8nle.png"><img class="alignnone  wp-image-3721" alt="Windows Azure Mobile Service API javascript" src="http://res.cloudinary.com/tapanila-net/image/upload/c_scale,q_100,w_600/v1388360474/Windows-Azure-Mobile-Service-API-javascript_cv8nle.png" width="600" height="166" /></a></li>
	<li>Browse to your mobileservice url/api/sql?id=1 to see the results</li>
</ol>
Javascript Code:

{% gist 5849491 %}
P.S. Note that if you get error that looks like this on windows azure mobile services log. Error occurred executing query: Error: [Microsoft][SQL Server Native Client 10.0][SQL Server]The SELECT permission was denied on the object 'Orders', database 'TapanilaDemo', schema 'dbo'. It means that you need to grant the Windows Azure Mobile Services read rights to the schema.
