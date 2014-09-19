---
layout: post
title: OAuth on Windows 8
date: 2012-07-14 13:19
author: Teemu
comments: true
categories: [Facebook, OAuth, Windows 8, WinRT]
---
OAuth is open authentication standard that can be used to give an access to the specific resources of the account. Instead of giving full access in form of username and password to 3rd party applications. Microsoft added a option to use OAuth in WinRT.

Here's an example how to use it to authenticate to Facebook.

<!--more-->

[sourcecode language="csharp"]
    private async void Authenticate()
    {
        //Facebook Authentication Uri
        var facebookUri = &quot;https://www.facebook.com/dialog/oauth&quot;;
        //Standard redirect uri for desktop/non-web based apps
        var redirectUri =
                 &quot;https://www.facebook.com/connect/login_success.html&quot;;
        //Place your appclient id here
        var clientId = &quot;&quot;;
        //The type of token that can be requested
        var responseType = &quot;token&quot;;
        //Response pattern
        var pattern = string.Format(&quot;{0}#access_token={1}&amp;expires_in={2}&quot;,
                 redirectUri, &quot;(?.+)&quot;, &quot;(?.+)&quot;);
        //Access scope wanted
        var scope = &quot;read_stream&quot;;
        try
        {
            String FacebookURL = &quot;https://www.facebook.com/dialog/oauth?&quot; +
                &quot;client_id=&quot; + clientId + &quot;&amp;redirect_uri=&quot; +
                 Uri.EscapeUriString(redirectUri) + &quot;&amp;scope=&quot; + scope +
                 &quot;&amp;display=touch&amp;response_type=&quot; + responseType;

            System.Uri StartUri = new Uri(FacebookURL);
            System.Uri EndUri = new Uri(redirectUri);

            WebAuthenticationResult WebAuthenticationResult =
                       await WebAuthenticationBroker.AuthenticateAsync(
                             WebAuthenticationOptions.None,
                             StartUri,
                             EndUri);
            if (WebAuthenticationResult.ResponseStatus == WebAuthenticationStatus.Success)
            {
                //Authenticated succesfully
                var response = WebAuthenticationResult.ResponseData.ToString();
            }
            else if
            (WebAuthenticationResult.ResponseStatus == WebAuthenticationStatus.ErrorHttp)
            {
                //Handle HTTP error
            }
            else
            {
                //Authentication failed
            }
        }
        catch (Exception ex)
        {
            //Handle error
        }
    }
[/sourcecode] 
