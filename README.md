# 🕍 Xcode templates 

If you are like me you love writing iOS code but there is nothing that breaks your creativity more than boilerplate code and having to think about it while some other more creative solutions might reside in your mind at the same time. Even if you have a pretty good idea about your architecture it is surely a waste of time to write boilerplate since it’s just repeating code. All you need is a bunch of good templates and writing code in any architecture should be easier for you as well and easier to get into for new members of the team. But it has a catch. Xcode templates aren’t exactly what you would call a well-documented part of the tool. That is why I decided to bring you through the process of building these from scratch to save you the trouble I went through with collecting the knowledge on this subject.

Writing templates has these advantages:
- Makes you save time in the long run if you take time to maintain and write your templates well
- It takes less time to onboard new people because they will not work from scratch 
- It helps maintain code conventions that you set up for yourself and your team
- If you ever wanted to export your snippets you’ll notice one similarity with templates and that is that they are saved locally and outside of any project that you are working on. That means that it's a great opportunity to upload those to a repository to be able to share them or to change your workstation while keeping up to date.

First of all if you want to connect template to your template list you have to find the right folder to clone the repo.
Directory where you can add custom templates so they are visible in your template list in xcode:

<pre><code>/Users/$USER_NAME/Library/Developer/Xcode/Templates
</code></pre>

Also if you want to create your own take inspiration from the already existing ones.
Directory where to find already existing Xcode templates to take inspiration from:

<pre><code>/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/File
</code></pre>

I wrote a quick list of templates that you can find here
*Contents:*
- File templates: 
    - MVVM Screen
    - Reactor storyboard screen
    - Reactor code based screen
    - Other templates
        - Manager template
        - Endpoint template
        - Coordinator template
- Project template:
    - Contains xcConfigs
    - Build settings
    - Cocoa pods
    - Fastlane
    - Firebase
    - Licences from settings
    - Build scripts for the previous dependencies
- Target templates: 
    - swiftlint autocorrect aggretate
    - anylint autocorrect aggretate
    - firebase config plist linker aggregate
    
#warning: all templates are dependent on GoodrequestIOSExtensions, that you can fetch with SPM from: https://github.com/GoodRequest/GoodIOSExtensions


