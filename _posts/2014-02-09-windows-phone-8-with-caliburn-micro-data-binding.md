---
layout: post
title: Windows Phone 8 with Caliburn Micro Data Binding
date: 2014-02-09 00:53
author: Teemu
comments: true
categories: [Caliburn.Micro, Data Binding, Design-Time, Visual Studio 2013, Windows Phone 8, Windows Phone 8]
---
Most powerful feature of Caliburn Micro is Data Binding. It connects your data logic and view together. It also make sure that whenever value is changed on logic side that change is reflected into view.

Another thing that we are using is Design-Time Support which basically enables you to see what the UI would look like without starting emulator.

Lets get started
<ol>
	<li>This continues from the template we created <a title="Windows Phone 8 with Caliburn Micro" href="http://tapanila.net/windows-phone-8-with-caliburn-micro/">here</a></li>
	<li>Define layout (Header, LongListSelector, TextBlock and Button) on MainPage.xaml
{% gist 8890673 %}</li>
	<li>Enabled Design-Time support and 3 different bindings on the view</li>
	<li>Edit MainPageViewModel.cs
{% gist 8890763 %}</li>
	<li>Launch emulator and enjoy!
<img class="alignnone wp-image-6091" alt="" src="https://res.cloudinary.com/tapanila-net/image/upload/c_scale,q_100,w_610/v1391895909/Windows_Phone_Emulator_nv1c81.png" width="610" height="1066" /></li>
</ol>
If you have anything to ask about data binding just leave a comment.
