---
layout: post
title: Windows Azure Active Directory Access Control with Visual Studio 2012
date: 2013-01-30 13:47
author: Teemu
comments: true
categories: [Active Directory Access Control, Visual Studio 2010, Windows Azure, Windows Azure Websites]
---
This guide shows you how to use Windows Azure Active Directory Access Control (also known as Access Control Service or ACS)

<!--more-->

Requirements:
<ul>
	<li>Visual Studio 2012</li>
	<li><a href="http://visualstudiogallery.msdn.microsoft.com/e21bf653-dfe1-4d81-b3d3-795cb104066e">Identity and Access tool</a></li>
	<li>An active <a title="Free Trial" href="http://www.windowsazure.com/en-us/pricing/free-trial/">Windows Azure account</a></li>
</ul>
Lets start by configuring the Windows Azure part first.
<ol>
	<li>Open <a href="https://manage.windowsazure.com">dashboard</a></li>
	<li>Click Active Directory
<a href="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360657/ActiveDirectory_bzidyg.png"><img class="alignnone size-full wp-image-1701" alt="ActiveDirectory" src="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360657/ActiveDirectory_bzidyg.png" width="181" height="553" /></a></li>
	<li>Click New from left bottom and fill in the name and choose region
<a href="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360655/CreateActiveDirectory_yuiuti.png"><img class="alignnone size-full wp-image-1711" alt="CreateActiveDirectory" src="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360655/CreateActiveDirectory_yuiuti.png" width="1140" height="490" /></a></li>
	<li>Choose your subscription and click Manage from bottom<a href="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360654/ManageActiveDirectory2_vozld8.png"><img class="alignnone size-full wp-image-1741" alt="ManageActiveDirectory2" src="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360654/ManageActiveDirectory2_vozld8.png" width="903" height="113" /></a></li>
	<li>Take up your Service Namespace. In my case "tapanilablog"
<a href="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360651/AccessControlService1_yi9fyf.png"><img class="alignnone size-full wp-image-1761" alt="AccessControlService" src="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360651/AccessControlService1_yi9fyf.png" width="1042" height="590" /></a></li>
	<li>Click Management Service from left and then ManagementClient
<a href="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360650/AccessControlServiceManagementService_pinknc.png"><img class="alignnone size-full wp-image-1771" alt="AccessControlServiceManagementService" src="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360650/AccessControlServiceManagementService_pinknc.png" width="1024" height="495" /></a></li>
	<li>Click Password
<a href="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360649/AccessControlServiceManagementServicePassword_pgjkuq.png"><img class="alignnone size-full wp-image-1781" alt="AccessControlServiceManagementServicePassword" src="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360649/AccessControlServiceManagementServicePassword_pgjkuq.png" width="1025" height="511" /></a></li>
	<li>Click Show Password and take up your Password there's needed later
<a href="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360647/AccessControlServiceManagementServicePasswordButton_howzgq.png"><img class="alignnone size-full wp-image-1791" alt="AccessControlServiceManagementServicePasswordButton" src="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360647/AccessControlServiceManagementServicePasswordButton_howzgq.png" width="1032" height="601" /></a></li>
	<li>Close your ACS management page and go back to dashboard</li>
	<li>Click Web sites
<a href="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360646/WebSites_to3wps.png"><img class="alignnone size-full wp-image-1801" alt="WebSites" src="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360646/WebSites_to3wps.png" width="188" height="471" /></a></li>
	<li>Create new web site
<a href="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360645/CreateWebSite_hgxysg.png"><img class="alignnone size-full wp-image-1811" alt="CreateWebSite" src="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360645/CreateWebSite_hgxysg.png" width="1145" height="485" /></a></li>
	<li>Download the publish profile and take up the url
<a href="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360644/WebSiteDetails_vgrdxn.png"><img class="alignnone size-full wp-image-1821" alt="WebSiteDetails" src="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360644/WebSiteDetails_vgrdxn.png" width="248" height="315" /></a></li>
</ol>
Now the Visual studio part
<ol>
	<li>Create new web project. Check that you are targeting .net 4.5
<a href="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360643/CreatingEmptyWebProject_o9a7ky.png"><img class="alignnone size-full wp-image-1831" alt="CreatingEmptyWebProject" src="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360643/CreatingEmptyWebProject_o9a7ky.png" width="954" height="582" /></a></li>
	<li>Right click your project and choose Identity and Access
<a href="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360641/IdentityAndAccess_f5xudj.png"><img class="alignnone size-full wp-image-1841" alt="IdentityAndAccess" src="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360641/IdentityAndAccess_f5xudj.png" width="647" height="537" /></a></li>
	<li>Select "Use the Windows Azure Access Control Service"
<a href="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360623/IdentityAndAccessSettings_pufhes.png"><img class="alignnone size-full wp-image-1881" alt="IdentityAndAccessSettings" src="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360623/IdentityAndAccessSettings_pufhes.png" width="729" height="208" /></a></li>
	<li>Click Change from below
<a href="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360626/IdentityAndAccessChange_kffyqm.png"><img class="alignnone size-full wp-image-1851" alt="IdentityAndAccessChange" src="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360626/IdentityAndAccessChange_kffyqm.png" width="720" height="293" /></a></li>
	<li>Enter your ACS namespace and management key that we got before
<a href="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360625/IdentityAndAccessConfigure_igfoct.png"><img class="alignnone size-full wp-image-1861" alt="IdentityAndAccessConfigure" src="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360625/IdentityAndAccessConfigure_igfoct.png" width="481" height="317" /></a></li>
	<li>Choose which providers you want to use with your application and Enter your realms and click okay
<a href="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360624/IdentityAndAccessProvideAndRealms_xdbxzn.png"><img class="alignnone size-full wp-image-1871" alt="IdentityAndAccessProvideAndRealms" src="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360624/IdentityAndAccessProvideAndRealms_xdbxzn.png" width="732" height="363" /></a></li>
	<li>Right click project and click Publish
<a href="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360621/PublishingProject_shn3aa.png"><img class="alignnone size-full wp-image-1901" alt="PublishingProject" src="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360621/PublishingProject_shn3aa.png" width="657" height="400" /></a></li>
	<li>Import your publishing profile
<a href="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360622/PublishingImport_fzwzmb.png"><img class="alignnone size-full wp-image-1891" alt="PublishingImport" src="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360622/PublishingImport_fzwzmb.png" width="584" height="296" /></a></li>
	<li>Click Publish
<a href="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360620/PublishPublish_lsnbxq.png"><img class="alignnone size-full wp-image-1911" alt="PublishPublish" src="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360620/PublishPublish_lsnbxq.png" width="683" height="501" /></a></li>
	<li>Now it should open your website and automatically redirect you into Live login because that's the only method. After your login is completed it will show you "Server Error in '/' Application. Because we used empty project</li>
</ol>

Update 29.7.2013:
If you have Runtime/Server issues when you have deployed this to Azure follow this <a href="http://denepalmer.azurewebsites.net/index.php/how-to-fix-runtimeserver-error-redirect-issues-when-adding-azure-acs-authentication-to-an-asp-net-project/">guide</a>.
