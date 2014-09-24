---
layout: post
title: Fetching Tweets using Windows Azure Mobile Services
date: 2013-01-17 13:12
author: Teemu
comments: true
categories: [Javascript, Scheduler, Twitter, Windows Azure, Windows Azure, Windows Azure Mobile Services]
---
<a href="http://www.windowsazure.com/en-us/develop/mobile/">Windows Azure Mobile Services</a> is one the newest things that have been added to Windows Azure. It's goal is to enable front-end developers easily to create a backend. It seriously is easy and require just few click and you are done with creating backend. This tutorial will focus on how to use Scheduler of Mobile Services to fetch data from twitter and then store it into Mobile Services.
<!--more-->
<ol>
	<li>Log into the <a href="https://manage.windowsazure.com/">Management Portal</a>.</li>
	<li>At the bottom left of page click NEW.
<img class="alignnone size-full wp-image-1431" alt="New" src="http://res.cloudinary.com/tapanila-net/image/upload/v1388360699/New_bnsjkq.png" width="123" height="60" /></li>
	<li>Choose Computing -&gt; Mobile Service -&gt; Create
<img class="alignnone size-full wp-image-1441" alt="CreateMobileServiceFromPanel" src="http://res.cloudinary.com/tapanila-net/image/upload/v1388360698/CreateMobileServiceFromPanel_uctr0g.png" width="1111" height="300" /></li>
	<li>This dialog will popup
<img class="alignnone size-full wp-image-1451" alt="CreateMobileServiceDialogOne" src="http://res.cloudinary.com/tapanila-net/image/upload/v1388360696/CreateMobileServiceDialogOne_coprdj.png" width="680" height="446" /></li>
	<li>Next step will look like this if you chose to create new SQL database instance
<img class="alignnone size-full wp-image-1461" alt="CreateMobileServiceDialogTwo" src="http://res.cloudinary.com/tapanila-net/image/upload/v1388360695/CreateMobileServiceDialogTwo_bwknpi.png" width="677" height="450" /></li>
	<li>After that step your backend is getting provisioned and will be functional in few minutes</li>
	<li>Lets start by viewing the menu of your new service
<img class="alignnone size-full wp-image-1471" alt="MobilSeriveMenu" src="http://res.cloudinary.com/tapanila-net/image/upload/v1388360694/MobilSeriveMenu_sosngw.png" width="924" height="222" /></li>
	<li>Navigate to DATA section
<img class="alignnone size-full wp-image-1481" alt="MobileServiceDataEmpty" src="http://res.cloudinary.com/tapanila-net/image/upload/v1388360693/MobileServiceDataEmpty_dscfor.png" width="725" height="123" /></li>
	<li>Choose add a table and give it a name "Tweets"
<img class="alignnone size-full wp-image-1491" alt="MobileServiceCreateTable" src="http://res.cloudinary.com/tapanila-net/image/upload/v1388360692/MobileServiceCreateTable_oakikh.png" width="645" height="559" /></li>
	<li>Navigate to SCHEDULER
<img class="alignnone size-full wp-image-1501" alt="MobileServiceSchedulerEmpty" src="http://res.cloudinary.com/tapanila-net/image/upload/v1388360665/MobileServiceSchedulerEmpty_yu6b1j.png" width="616" height="135" /></li>
	<li>Choose create a scheduled job and give it a name "getTweets"
<img class="alignnone size-full wp-image-1511" alt="MobileServiceCreateScheduledJob" src="http://res.cloudinary.com/tapanila-net/image/upload/v1388360663/MobileServiceCreateScheduledJob_w4jwtl.png" width="621" height="453" /></li>
	<li>Open the job by clicking the name
<img class="alignnone size-full wp-image-1521" alt="MobileServiceScheduledJob" src="http://res.cloudinary.com/tapanila-net/image/upload/v1388360662/MobileServiceScheduledJob_lcpuwz.png" width="900" height="37" /></li>
	<li>Open Script
<img class="alignnone size-full wp-image-1531" alt="MobileServiceSchedulerScript" src="http://res.cloudinary.com/tapanila-net/image/upload/v1388360661/MobileServiceSchedulerScript_dbqyrd.png" width="1089" height="359" /></li>
	<li>Copy paste the code from below and choose save from bottom
<img class="alignnone size-full wp-image-1541" alt="MobileServiceSchedulerScriptSave" src="http://res.cloudinary.com/tapanila-net/image/upload/v1388360660/MobileServiceSchedulerScriptSave_xgjhf9.png" width="890" height="228" /></li>
	<li>Click run once from bottom
<img class="alignnone size-full wp-image-1551" alt="MobileServiceSchedulerScriptRunOnce" src="http://res.cloudinary.com/tapanila-net/image/upload/v1388360659/MobileServiceSchedulerScriptRunOnce_iv5yt5.png" width="589" height="202" /></li>
	<li>Go back to DATA and see the tweets containing #WindowsAzure in the table
<img class="alignnone size-full wp-image-1561" alt="MobileServiceDataTweets" src="http://res.cloudinary.com/tapanila-net/image/upload/v1388360658/MobileServiceDataTweets_ivaose.png" width="1076" height="367" /></li>
</ol>
<script src="https://gist.github.com/tapanila/4594903.js"></script>
