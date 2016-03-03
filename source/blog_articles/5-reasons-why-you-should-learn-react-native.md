---
title: 5 reasons why you should try out React Native
layout: article
published: false
date: 2016-02-24 00:00 UTC
tags: React, React Native, iOS, Android, Mobile Development
---
You are a web developer and have been interested in
mobile development for years but haven't had the time or motivation to learn it.
You know it will take a big amount of time and effort because you would need 
to learn not only a completely new programming language 
like Objective C, Swift or Java but also a completely different set of tools 
like Xcode or Android Studio.

You've got excited when different frameworks appeared in the
past like Ionic or Apache Cordova. They promised targeting multiple mobile platforms
with just one code base, but for some reason you lost all your interest when you noticed
that apps created with these frameworks didn't feel exactly like a real native app.

Last year React Native suddenly appeared and you are not sure that investing
time and effort in it will worth it.

Why this time would be any different?
READMORE

In my opinion React Native is  certainly different. Here are some reasons why React Native is so
promising and why should give it a try.

**1. React Native doesn't promise one codebase shared between all platforms.**

This is where the guys at Facebook nailed it. They understood that each
platform has different looks, feels and capabilities, and we should still be
developing separate apps for each platform. They call this approach "learn once,
write anywhere". This means that the same set of developers should be able to
build applications for whatever platform they choose, without needing to learn a
completely different set of technologies and tools.

**2. React Native feels truly native because it uses truly native components.**

With React Native you can use the standard platform components such as the
NavigatorIOS, the DatePickerIOS and the UITabBar on iOS, or the Drawer, the DatePickerAndroid
and the ProgressBarAndroid on Android. You also have access to platform specific APIs
like Async Storage, Camera, Camera Roll, Push Notifications, etc.

Here are some gifs of how React Native apps look and feel:
[ Put some gifs of react native apps here. ]

**3. You can continue using the same workflow you used for years in web development.**

If you come from web development you will appreciate that the workflow is quite
similar. You can use Chrome web developer tools to debug and inspect elements,
and you can even have live reloading.

If you tried creating a native application in the past you might now that laying out
things in the screen is quite cumbersome. 

With React Native, laying out and styling is really easy and it is pretty much the
same as styling a web page like you are used to. You can use flexbox to build the most common UI layouts
and you can even use common web styles such as `backgroundColor`, `margin`, `padding`, `fontSize`, 
among others.

**4. You already use React? You will get the hang of it in no time.**

Components are written with same way you use in the web and the only difference is 
that instead of rendering `<div>`, `<p>` or `<img>` components you will render components like `<View>`,
`<Text>` or `<Image>`.

I made this app when learning React in just a couple of hours:
[Add spotify player image here gif]

**5. You can share a good amount of code between your iOS & Android App.**

I know that I said that the idea of React Native is not "write once, run
everywhere" but you can still share a good amount of code between your iOS and
your Android app.

You can share utility functions, your app state, your router and
even some components.

You can have platform specific components like these ones:

```language-php
/components/BigButton.ios.js
/components/BigButton.android.js
```
When you import them React Native will automatically import the correct one for the
running platform.

```language-js
import BigButton from './components/BigButton';
```


