---
layout: post
title: Running multiple wordpress blogs on Azure Websites
date: 2012-07-23 09:00
author: Teemu
comments: true
categories: [mysql, Windows Azure, Windows Azure, Windows Azure Websites, wordpress]
---
Currently on Azure Websites you get 1 free MySQL database.
To install a second Wordpress blog you need to use the same database.
That itself is easy but when you try to open your new Wordpress blog it doesn't work.
Here's how to fix the situation.
<!--more-->
<ol>
	<li>Open the Azure dashboard and choose Web Sites
<a href="http://tapanila.azurewebsites.net/wp-content/uploads/2012/07/AzureServices.png"><img class="alignnone size-medium wp-image-62" title="AzureServices" src="https://res.cloudinary.com/tapanila-net/image/upload/h_300,w_144/v1388361016/AzureServices_xcrjtp.png" alt="" width="144" height="300" /></a></li>
	<li>Open your web site
<a href="http://tapanila.azurewebsites.net/wp-content/uploads/2012/07/AzureWebsiteSelection.png"><img class="alignnone size-medium wp-image-63" title="AzureWebsiteSelection" src="https://res.cloudinary.com/tapanila-net/image/upload/h_39,w_300/v1388361015/AzureWebsiteSelection_qtg7od.png" alt="" width="300" height="39" /></a></li>
	<li>Reset your Deployment credentials if you don't know your ftp password. Rest of the information you can get from here
<a href="http://tapanila.azurewebsites.net/wp-content/uploads/2012/07/Website-information.png"><img class="alignnone size-medium wp-image-64" title="Website information" src="https://res.cloudinary.com/tapanila-net/image/upload/h_300,w_148/v1388361014/Website-information_jpqg26.png" alt="" width="148" height="300" /></a></li>
	<li>open ftp access to your website I used <a href="http://winscp.net/eng/index.php">WinSCP
</a><a href="http://tapanila.azurewebsites.net/wp-content/uploads/2012/07/WinSCP.png"><img class="alignnone size-medium wp-image-65" title="WinSCP" src="https://res.cloudinary.com/tapanila-net/image/upload/h_214,w_300/v1388361013/WinSCP_hv8ml4.png" alt="" width="300" height="214" /></a><a href="http://winscp.net/eng/index.php">
</a></li>
	<li>Navigate by double clicking "site" and then "wwwroot" and open wp-config.php</li>
	<li>Change $table_prefix to something else than default 'wp_'
<a href="http://tapanila.azurewebsites.net/wp-content/uploads/2012/07/Config.png"><img class="alignnone size-medium wp-image-66" title="Config" src="https://res.cloudinary.com/tapanila-net/image/upload/h_55,w_300/v1388361011/Config_zl7e7r.png" alt="" width="300" height="55" /></a></li>
	<li>Save the file</li>
	<li>close the WinSCP</li>
	<li>Open browser and go to http://yourwebsite.azurewebsites.net/wp-admin/install.php</li>
	<li>Complete Wordpress installation and enjoy</li>
</ol>
