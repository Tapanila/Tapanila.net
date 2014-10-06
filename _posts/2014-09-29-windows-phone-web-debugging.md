---
layout: post
title: Windows Phone Web Debugging
date: 2014-09-29 00:53
author: Teemu
comments: true
categories: [Windows Phone 8, Fiddler, Debugging]
---
Sometimes you need to see what kind of packages your Windows Phone is sending and receiving. This guide is going to show how to do that using tool called [Fiddler](http://www.telerik.com/fiddler)

1. Install [Fiddler](http://www.telerik.com/download/fiddler)
2. Start fiddler and open settings

   ![Starting fiddler and opening settings](https://res.cloudinary.com/tapanila-net/image/upload/c_scale,q_100,w_610/v1412000536/Fiddler_options_xhoh5z.png)
3. Go to "HTTPS" tab and make sure you have checked Capture and Decrypt checkboxes

   ![Fiddler HTTPS settings](https://res.cloudinary.com/tapanila-net/image/upload/c_scale,q_100,w_610/v1412000536/Fiddler_HTTPS_options_yam7mt.png)
4. Go to "Connections" tab and check "Allow remote computers to connect" and change your listens on port to 8889 (Screenshot)

   ![Fiddler settings Connections tab](https://res.cloudinary.com/tapanila-net/image/upload/c_scale,q_100,w_610/v1412000536/Fiddler_Connections_options_uzhddx.png)
5. Check your computer ip address from connection icon (mine is 172.16.0.34)

   ![Fiddler network connection status](https://res.cloudinary.com/tapanila-net/image/upload/c_scale,q_100,w_610/v1412000536/Fiddler_IP_address_hetw9g.png)
5. Connect your phone to same network as your computer

   ![Windows Phone wifi network list](https://res.cloudinary.com/tapanila-net/image/upload/c_scale,q_100,w_610/v1412025817/Windows_Phone_Wifi_Networks_nmauvr.png)
7. Open your browser and go to web address 172.16.0.34:8889 (Use your own IP from point 5)

   ![Fiddler echo service on Windows Phone](https://res.cloudinary.com/tapanila-net/image/upload/c_scale,q_100,w_610/v1412025815/Fiddler_Echo_Page_eyvvwz.png)
8. Click download the FiddlerRoot certificate
9. Click Open

   ![Downloading fiddler root certificate on Windows Phone](https://res.cloudinary.com/tapanila-net/image/upload/c_scale,q_100,w_610/v1412025815/Downloading_fiddler_root_certificate_adqskz.png)

10. Click Install

    ![Installing fiddler root certificate on Windows Phone](https://res.cloudinary.com/tapanila-net/image/upload/c_scale,q_100,w_610/v1412025815/Installing_fiddler_root_certificate_m7rb0t.png)
11. Click OK

    ![Succesfully installed fiddler root certificate](https://res.cloudinary.com/tapanila-net/image/upload/c_scale,q_100,w_610/v1412025815/Fiddler_root_certificate_installed_successfully_wjemln.png)
12. Go to your wifi list on settings and click the name of connected wifi network

    ![Windows Phone wifi network list](https://res.cloudinary.com/tapanila-net/image/upload/c_scale,q_100,w_610/v1412025817/Windows_Phone_Wifi_Networks_nmauvr.png)
13. Enable proxy and type your computer ip to server and 8889 to port

    ![Windows Phone Wifi Proxy Settings](https://res.cloudinary.com/tapanila-net/image/upload/c_scale,q_100,w_610/v1412025818/Windows_Phone_Wifi_proxy_settings_nrx6nd.png)
14. Open browser on phone and browse to tapanila.net

    ![Tapanila.net on Windows Phone browser](https://res.cloudinary.com/tapanila-net/image/upload/c_scale,q_100,w_610/v1412025817/Tapanila_net_on_Windows_Phone_vw0cfq.png)
15. See the request on your computer at Fiddler

    ![Fiddler data on request for Tapanila.net](https://res.cloudinary.com/tapanila-net/image/upload/c_scale,q_100,w_610/v1412000537/Fiddler_data_from_Tapanila_net_howqlm.png)
