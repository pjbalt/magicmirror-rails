# Magic Mirror Rails
![Magic Mirror](http://i.imgur.com/KWLknCx.png)

## Why another Magic Mirror?
I loved the idea of the magic mirror after reading about Michael Teeuws [project.](http://michaelteeuw.nl/post/80391333672/magic-mirror-part-i-the-idea-the-mirror)  I started thinking about my own set-up; I didn’t have an extra LCD laying around that would work well, and also didn’t want all that weight in the case.

Since I had an old Nexus 7 laying around collecting dust the Android app mirrors caught my eye, but I didn’t like the idea of a static app that would need updating if I wanted to make changes.  You’d have to remove the tablet from the case, update the APK, then put it all back together.  I suppose you could root the tablet and figure out a way to update & launch the APK remotely skipping any need for physically touching the device, but I didn’t feel like messing with that.

I had an unused Raspberry Pi Zero which would be a perfect web server for the mirror.  The plan was to serve up the content via a Ruby on Rails application running on the Pi Zero.  There was a problem though - you can’t accomplish true full screen with Android browsers.  I decided to create an Android application that used a full screen view and load my rails app in a WebView.  With Android you can set the device to never turn off the screen after you enable Developer Options in the settings - this way the mirror can be always active. Here is the Android project: https://github.com/pjbalt/magicmirror-android.

## Features
The interface is a simple right floating design on a black background.
* Date and time
* Current weather conditions
* Weather icon
* Bitcoin price via Bitstamp
  * current price
  * 24-hour high
  * 24-hour low

## Set-up
In the config dir locate and rename application_example.yml to application.yml.  Fill out the environment var’s according to your needs.
### Dark Sky Weather API
Currently the API gives you 1K free requests a day https://darksky.net/dev/docs - sign up to obtain your API key.
### Bitstamp
The Bitstamp API allows for 600 requests per 10 minutes - no API key is required to access the endpoint https://www.bitstamp.net/api/v2/ticker/btcusd/.
### Optional Android WebView app
If you want to run this fullscreen in an Android WebView here is a simple app https://github.com/pjbalt/magicmirror-android.

## Notes
Why a full rails app for this?  Why not, rails rules.

You know you can do all that in JavaScript instead of using the controller methods, right?  Yes, of course, but that’s boring, and I have zero need to optimize performance - my Pi Zero happens to like rendering partials.