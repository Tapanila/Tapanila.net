---
layout: post
title: Windows Phone 8 with Caliburn Micro
date: 2014-02-02 22:54
comments: true
tags: [Caliburn.Micro, Nokia Developer, Visual Studio 2013, Windows Phone 8, Windows Phone 8]
---
I love Model View ViewModel (MVVM) pattern when doing Windows Phone or Windows 8 development. It allows nice separation of UI and code which gives your project very good structure. There's basically two common MVVM toolkits out which are <a href="http://mvvmlight.codeplex.com/">MVVM Light</a> and <a href="https://caliburnmicro.codeplex.com/">Caliburn Micro</a>.

I first used MVVM light heavily but have recently moved over into Caliburn Micro. Biggest difference is that caliburn uses naming convention while mvvm light doesn't. Using naming conventions makes you fast but it also raises the barrier if someone not familiar with the pattern is looking at your code.

Considering the facts I do recommend using Caliburn Micro and here's sample how to get started and Build Windows Phone 8 hello world with Caliburn Micro.
<ol>
	<li>Create new Windows Phone 8 basic project</li>
	<li>Install Caliburn.Micro.Start nuget package
<img class="alignnone wp-image-5951" alt="" src="https://res.cloudinary.com/tapanila-net/image/upload/c_scale,q_100,w_601/v1391370341/Caliburn_Micro_Start_Nuget_Package_cdlfdl.png" width="601" height="406" /></li>
	<li>Create new folder into your project "Views"
<img class="alignnone wp-image-5961" alt="" src="https://res.cloudinary.com/tapanila-net/image/upload/c_scale,q_100,w_601/v1391370341/Add_new_folder_migkkr.png" width="601" height="708" /></li>
	<li>Create new folder into your project "ViewModels"
<img class="alignnone wp-image-5971" alt="" src="https://res.cloudinary.com/tapanila-net/image/upload/c_scale,q_100,w_601/v1391370341/New_folder_viewmodels_and_views_hxsbjk.png" width="601" height="807" /></li>
	<li>Drag MainPage.xaml and MainPageViewModel.cs to their folders
<img class="alignnone wp-image-5981" alt="" src="https://res.cloudinary.com/tapanila-net/image/upload/c_scale,q_100,w_601/v1391370341/MVVM_structure_cdo3vo.png" width="601" height="348" /></li>
	<li>Change Navigation Page from WMAppManifest.xml to "Views/MainPage.xaml"
<img class="alignnone wp-image-6051" alt="" src="https://res.cloudinary.com/tapanila-net/image/upload/c_scale,q_100,w_610/v1391892814/WMAppManifest_zohhhz.png" width="610" height="459" /></li>
	<li>Remove everything else than InitializeComponent() from app.xaml.cs
{% gist 8773744 %}</li>
	<li>Edit your app.xaml
{% gist 8773753 %}</li>
	<li>Prepare your first viewmodel
{% gist 8773761 %}</li>
	<li>Clean MainPage.xaml.cs
{% gist 8890153 %}</li>
	<li>Enjoy your end results
<img class="alignnone wp-image-5991" alt="" src="https://res.cloudinary.com/tapanila-net/image/upload/q_100/v1391370341/Hello_World_Windows_Phone_Emulator_f8tflc.png" width="380" height="632" /></li>
</ol>
If you have any questions regarding how to use Caliburn Micro with Windows Phone 8 or Windows 8 please do so on comments.
Whole solution can be found <a href="https://github.com/tapanila/TT-WP8-Caliburn-1">here</a>.
