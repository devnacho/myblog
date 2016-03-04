---
title: 5 Reasons Why You Should Try Out React Native
layout: article
published: true
date: 2016-03-03 00:00 UTC
tags: React, React Native, iOS, Android, Mobile Development
---
Say you’re a web developer and have been interested in mobile development for
years, but you haven’t had the time or the motivation to learn it. You know it
will take a great deal of effort because you would need to learn not only a new
programming language like Objective C, Swift or Java, but also a completely
different set of tools — for example, Xcode or Android Studio.

In the past, you got excited when different frameworks like Ionic or Apache
Cordova appeared. They promised to give you the ability to target multiple
mobile platforms with just one code base, but for some reason you lost all your
interest when you noticed that apps created with these frameworks didn’t feel
like real native apps.

Last year, React Native suddenly appeared, and you were not sure that investing
your time and effort in it would worth it.

Why would this time be any different?
READMORE

But in my opinion, React Native is in a league of its own. Here are some of the
reasons why React Native is so promising:

**1. React Native doesn’t promise one codebase to be shared among all platforms.**

This is where the guys at Facebook nailed it. They understood that all platforms
have their own look, feel and capabilities, and that we should be developing
separate apps for each platform. They call this approach “learn once, write
anywhere.” This means that the same set of developers should be able to build
applications for whichever platform they choose, without any need to learn a
completely different set of technologies and tools.

**2. React Native truly feels native because it uses truly native components.**

With React Native, you can use standard platform components such as the
`NavigatorIOS`, the `DatePickerIOS` and the `UITabBar` on iOS, or the Drawer, the
`DatePickerAndroid` and the `ProgressBarAndroid` on Android. You’ll also have access
to platform-specific APIs like Async Storage, Camera, Camera Roll, Push
Notifications, etc.

Here are some gifs that reveal how React Native apps look and feel:

<div style="width: 50px;">
  <blockquote class="imgur-embed-pub" lang="en" data-id="JbRS1G9"><a
  href="//imgur.com/JbRS1G9">View post on imgur.com</a></blockquote><script async
  src="//s.imgur.com/min/embed.js" charset="utf-8"></script>
</div>
<div style="width: 50px;">
  <blockquote class="imgur-embed-pub" lang="en" data-id="AvHAELN"><a
  href="//imgur.com/AvHAELN">View post on imgur.com</a></blockquote><script async
  src="//s.imgur.com/min/embed.js" charset="utf-8"></script>
</div>
<div style="width: 50px;">
  <blockquote class="imgur-embed-pub" lang="en" data-id="mqVYGcN"><a
  href="//imgur.com/mqVYGcN">View post on imgur.com</a></blockquote><script async
  src="//s.imgur.com/min/embed.js" charset="utf-8"></script>
</div>
<div style="width: 50px;">
  <blockquote class="imgur-embed-pub" lang="en" data-id="yPR2C7Y"><a
  href="//imgur.com/yPR2C7Y">View post on imgur.com</a></blockquote><script async
  src="//s.imgur.com/min/embed.js" charset="utf-8"></script>
</div>
**3. You can use the same workflow you do as a web developer.**

If you come from web development, you will appreciate that the workflow is quite
similar. You can use Chrome Web Developer Tools to debug and inspect elements,
and you can even take advantage of live reloading.

If you’ve tried creating a native application in the past, you probably know
that laying out things onscreen is quite cumbersome.

With React Native, laying out and styling is really easy, and it is pretty much
the same as styling a web page. You can use flexbox to build the most common UI
layouts, and you can even use common web styles such as `backgroundColor`, `margin`,
`padding`, `fontSize` and more.

**4. Do you already use React? You will get the hang of it in no time!**

Components are written in the same way as on the web, and the only difference is
that instead of rendering `<div>`, `<p>` or `<img>` components, you will render components like `<View>`,
`<Text>` or `<Image>`.

I made this app while I was learning React, and it only took me a couple of
hours:
[Add spotify player image here gif]

**5. You can share a substantial amount of code between your iOS & Android app.**

I know that I said that the idea of React Native is not to “write once, run
everywhere,” but you can still share quite a bit of code between your iOS and
your Android app.

You can share utility functions, your app state, your router and even some
components.

Plus you can have platform-specific components like these ones:

```language-php
/components/BigButton.ios.js
/components/BigButton.android.js
```
When you import them, React Native will automatically import the correct option
for the running platform.

```language-js
import BigButton from './components/BigButton';
```


