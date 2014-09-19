---
layout: post
title: Foursquare Venues API
date: 2012-12-12 07:00
author: Teemu
comments: true
categories: [Json, Nuget, Parsing, Windows 8, Windows 8]
---
<a href="http://foursquare.com/">Foursquare</a> has great API and <a href="https://developer.foursquare.com/">documentation</a> about it. Nice thing is that you don't need to authenticate to use most of the API. But even then you will need to have registered for Foursquare developer. If you need to authenticate foursquare is also using OAuth if you need to authenticate check <a title="OAuth on Windows 8" href="http://www.tapanila.net/oauth-on-windows-8/">this</a>.<!--more-->

Now the API I'm very interested is venues. To use it you don't need to authenticate. So I will just use it without authenticating. So to use it I just download the json information from the API where I pass latitude and longitude as parameters and then use <a title="Consuming Json API easy" href="http://www.tapanila.net/consuming-json-api-easily/">JSON.net and JSON2CSHARP</a> to parse it into nice objects.
Classes from JSON2CHSARP:
<script type="text/javascript" src="https://gist.github.com/4185979.js">// <![CDATA[

// ]]></script>
Rest of the code:
<script type="text/javascript" src="https://gist.github.com/4185984.js">// <![CDATA[

// ]]></script>
