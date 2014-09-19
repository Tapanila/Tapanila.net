---
layout: post
title: Get all of the friends from Facebook
date: 2012-03-28 11:41
author: Teemu
comments: true
categories: [Facebook, Windows Phone 7]
---
This post continue from the last one: <a href="http://windowsphoneaalto.org/2012/01/facebook-get-information-about-the-user/">Facebook get information about the user</a>

So we are only going to touch the FacebookLogin.cs file and only the GetInformation and _fbClient_GetCompleted functions.

<!--more-->

[sourcecode language="csharp"]
        private void GetInformation()
        {
            //Create the Facebook client with the accessToken.
            //after this the client can be used to retrieve/send the data
            FacebookClient _fbClient = new FacebookClient(_accessToken);
            //Create a eventhandler for data download completed
            _fbClient.GetCompleted += _fbClient_GetCompleted;
            //Get the friends data
            _fbClient.GetAsync(&quot;me/friends&quot;);
        }

        void _fbClient_GetCompleted(object sender, FacebookApiEventArgs e)
        {
            //Turn the data into Dictionary.
            //If you want to see what the Facebook is returning you can
            // check it with this tool provided by Facebook
            //http://developers.facebook.com/tools/explorer/?path=me/friends
            var result = e.GetResultData() as IDictionary&lt;string, object&gt;;
            //If you look at the data that the API returns
            //All of the data is under array Data, so we are saying
            //Store the data array into var data and then loop thru it
            var data = result[&quot;data&quot;] as JsonArray;
            //Looping thru the data array
            foreach (IDictionary&lt;string,object&gt; friend in data)
            {
                //Get the name of friend
                string name = friend[&quot;name&quot;].ToString();
                //Get the id of friend
                string id = friend[&quot;id&quot;].ToString();
                //Currently the thread running this code
                //is not the UI thread and only UI thread can update
                //UI. So we are calling the UI thread here.
                _page.Dispatcher.BeginInvoke(() =&gt;
                {
                    MessageBox.Show(name + &quot; (&quot; + id + &quot;)&quot;);
                });
            }
        }
[/sourcecode]

So with only few lines of changes we created a application that can be used to fetch all of the friends of user.

<a href="http://tapanila.azurewebsites.net/wp-content/uploads/2012/03/FacebookFriendsExample.rar">Full solution</a>
