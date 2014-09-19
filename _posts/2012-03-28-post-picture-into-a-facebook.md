---
layout: post
title: Post picture into a facebook
date: 2012-03-28 11:44
author: Teemu
comments: true
categories: [Facebook, Windows Phone 7]
---
This post continue from the last one: <a href="http://www.tapanila.net/get-friends-from-facebook/">Get all of the friends from Facebook</a>

So we are only going to touch the FacebookLogin.cs file.
Lets start by FacebookLogin method.

We need to add user_photos into permissions.
Because we want to access the photos of user.
So now the FacebookLogin function will look like this

<!--more-->

[sourcecode language="csharp"]
public FacebookLogin(Panel container, Page page)
        {
            _page = page;
            //Initialize _webBrowser
            _webBrowser = new WebBrowser();
            //Get this from the facebook
            string appId = &quot;&quot;;
            //List of all the permissions you want to have access to
            //You can get the list of possiblities from here
            //http://developers.facebook.com/tools/explorer/
            string[] extendedPermissions = new[] {
                &quot;publish_stream&quot;,
                &quot;offline_access&quot;,
                &quot;user_groups&quot;,
                &quot;user_photos&quot;
            };

            var oauth = new FacebookOAuthClient { AppId = appId };
            //Telling the Facebook that we want token as response
            //and we are using touch enabled device
            var parameters = new Dictionary&lt;string, object&gt;
                    {
                        { &quot;response_type&quot;, &quot;token&quot; },
                        { &quot;display&quot;, &quot;touch&quot; }
                    };
            //If there's extended permissions build the string
            //and set it up
            if (extendedPermissions != null &amp;&amp;
                extendedPermissions.Length &gt; 0)
            {
                var scope = new StringBuilder();
                scope.Append(string.Join(&quot;,&quot;, extendedPermissions));
                parameters[&quot;scope&quot;] = scope.ToString();
            }
            //Create the login url
            var loginUrl = oauth.GetLoginUrl(parameters);
            //Add webBrowser to the contentPanel
            container.Children.Add(_webBrowser);
            _webBrowser.Navigated += webBrowser_Navigated;
            //Open the facebook login page into the browser
            _webBrowser.Navigate(loginUrl);
        }
[/sourcecode]


Also we are going to use the PhotoChooser because we are sending a photo to Facebook.
So add this using line

[sourcecode language="csharp"]
using Microsoft.Phone.Tasks;
[/sourcecode]

So when you have logged in into Facebook we are going to launch the Photo Chooser.
After user has chosen a photo it will automatically post it into Facebook using description "This is a test image" and name it Couch.

[sourcecode language="csharp"]
        private void GetInformation()
        {
            //Create the Facebook client with the accessToken.
            //after this the client can be used to retrieve/send the data
            FacebookClient _fbClient = new FacebookClient(_accessToken);
            //Create a eventhandler for data download completed
            _fbClient.GetCompleted += _fbClient_GetCompleted;
            //Get the friends data
            //_fbClient.GetAsync(&quot;me/friends&quot;);
            //Create a new PhtoChooseTask
            var task = new PhotoChooserTask();
            //Tell it to fire a event when completed
            task.Completed += TaskCompleted;
            //Show the chooser
            task.Show();
        }

        void TaskCompleted(object sender, PhotoResult e)
        {
            //Send the chose picture into PostPicture function
            PostPicture(e.ChosenPhoto);
        }

        private void PostPicture(Stream theFile)
        {
            //Create a parameters Dictionary
            var parameters = new Dictionary&lt;string, object&gt;();
            var picture = new FacebookMediaObject
                {
                    //Tell facebook that we are sending image
                    ContentType = &quot;image/jpeg&quot;,
                    //Give name to the image
                    FileName = &quot;Couch&quot;
                };
            //Create a new byteArray with right length
            var img = new byte[theFile.Length];
            //Convert the image content into bytearray
            theFile.Read(img, 0, img.Length);
            //Close the stream
            theFile.Close();
            //Put the bytearray into Picture
            picture.SetValue(img);
            //Add the image into parameters
            parameters.Add(&quot;source&quot;, picture);
            //Description of the posted image
            parameters.Add(&quot;message&quot;, &quot;This is a test image&quot;);
            //Create a new FB client
            var fbClient = new FacebookClient(_accessToken);
            //Which event to fireup once posting is completed
            fbClient.PostCompleted += FbClientPostCompleted;
            //Action!
            fbClient.PostAsync(&quot;me/photos&quot;,parameters);
        }

        void FbClientPostCompleted(object sender, FacebookApiEventArgs e)
        {
            //Just show simple messageBox indicating success
            _page.Dispatcher.BeginInvoke(() =&gt; MessageBox.Show(&quot;Success&quot;));
        }
[/sourcecode]

<a href="http://tapanila.azurewebsites.net/wp-content/uploads/2012/03/FacebookPictureExample.rar">Full solution</a>
