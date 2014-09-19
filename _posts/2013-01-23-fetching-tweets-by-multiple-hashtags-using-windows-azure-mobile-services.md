---
layout: post
title: Fetching Tweets by multiple hashtags using Windows Azure Mobile Services
date: 2013-01-23 08:00
author: Teemu
comments: true
categories: [Javascript, Parsing, Twitter, Windows Azure, Windows Azure, Windows Azure Mobile Services]
---
<a title="Fetching Tweets using Windows Azure Mobile Services" href="http://www.tapanila.net/fetching-tweets-using-windows-azure-mobile-services/">In my previous post</a> I went through the whole process how to create new Windows Azure Mobile Services project and adding the scheduler for fetching tweets based on single tweet.<!--more--> Here's same sample except now it enables you to add the wanted hashtags to table and then fetch all of them.

You only need to create one new table called hashtags and copy paste the javascript to getTweets scheduler.
<script type="text/javascript" src="https://gist.github.com/4594903.js"></script>
