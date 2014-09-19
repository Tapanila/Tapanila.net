---
layout: post
title: Facebook Single sign-on on Windows Phone 8 with Windows Azure Mobile Services
date: 2014-01-26 19:54
author: Teemu
comments: true
categories: [Facebook, Nuget, SSO, Visual Studio 2013, Windows Azure Mobile Services, Windows Phone 8, Windows Phone 8]
---
Using Facebook single sign-on on Windows Phone 8 applications allows user very easy way to register/login to your application without filling forms. But it still requires user to enter Facebook login credentials to your application or Facebook web form. To avoid this you can use Facebook SSO (Single Sign On) which basically means that when you want to do authentication against Facebook on your application. You just redirect user to Facebook Windows Phone application where user can simply accept your application and whole authorization is done.

To use this feature you need to prepare your application with these steps:
<ol>
	<li>Create a new Windows Azure Mobile Service and follow <a href="http://www.windowsazure.com/en-us/documentation/articles/mobile-services-windows-phone-get-started-users/">this guide</a></li>
	<li>Open the visual studio project that you downloaded and edited on step 1</li>
	<li>Open WMAppManifest.xml on Code View
<img class="alignnone wp-image-5851" alt="" src="http://res.cloudinary.com/tapanila-net/image/upload/q_100/v1390752735/WMAppManifest_View_Code_kt3hxp.png" width="420" height="878" /></li>
	<li>Edit WMAppManifest by adding the Extensions and Protocol. Protocol name should be same as your ProductID without dashes and with msft- prefix
{% gist 8634761 %}</li>
	<li>Open Package Manager Console
<img class="alignnone wp-image-5861" alt="" src="http://res.cloudinary.com/tapanila-net/image/upload/c_scale,q_100,w_601/v1390752729/Package_Manager_Console_VS2013_ciqdgp.png" width="601" height="442" /></li>
	<li>Run Install-Package Facebook.Client -pre
<img class="alignnone wp-image-5871" alt="" src="http://res.cloudinary.com/tapanila-net/image/upload/c_scale,q_100,w_601/v1390752739/Package_Manager_Console_Install_VS2013_wjufdq.png" width="601" height="299" /></li>
	<li>Create new class called CustomURIMapper
<img class="alignnone wp-image-5901" alt="" src="http://res.cloudinary.com/tapanila-net/image/upload/c_scale,q_100,w_601/v1390753621/Create_New_Class_VS_2013_upi4vi.png" width="601" height="743" /></li>
	<li>Here's all the code for the class
{% gist 8634888 %}</li>
	<li>Open App.xaml.cs and edit InitilizationPhoneApplication() method
{% gist 8634932 %}</li>
	<li>Edit MainPage.xaml.cs
{% gist 8635018 %}</li>
	<li>Go to <a href="https://developers.facebook.com">Facebook developers</a> and insert your windows phone application product ID without dashes into "Windows Phone Store ID" field
<img class="alignnone wp-image-5911" alt="" src="http://res.cloudinary.com/tapanila-net/image/upload/c_scale,q_100,w_601/v1390755215/Facebook_Developers_App_Basic_WP8_n4d1oc.png" width="601" height="430" /></li>
</ol>
Now when user opens the app he will be redirected to Facebook for authenticating the app. Once he's done he will be back into the application and authentication is done. If the user doesn't have Facebook application installed he will be redirected to Windows Phone store to install it.

Complete solution can be found from <a href="https://github.com/tapanila/TTWP8-Facebook-SSO">Github</a>

Any questions or comments?

&nbsp;
