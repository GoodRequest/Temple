# 🕍 Xcode templates 
[![iOS Version](https://img.shields.io/badge/iOS_Version->=_13.0-brightgreen?logo=apple&logoColor=green)]() [![Swift Version](https://img.shields.io/badge/Swift_Version-5.2-green?logo=swift)](https://docs.swift.org/swift-book/)

If you are like me you love writing iOS code but there is nothing that breaks your creativity more than boilerplate code and having to think about it while some other more creative solutions might reside in your mind at the same time. Even if you have a pretty good idea about your architecture it is surely a waste of time to write boilerplate since it’s just repeating code. All you need is a bunch of good templates and writing code in any architecture should be easier for you as well and easier to get into for new members of the team. But it has a catch. Xcode templates aren’t exactly what you would call a well-documented part of the tool. That is why I decided to bring you through the process of building these from scratch to save you the trouble I went through with collecting the knowledge on this subject.

Writing templates has these advantages:
- Makes you save time in the long run if you take time to maintain and write your templates well
- It takes less time to onboard new people because they will not work from scratch 
- It helps maintain code conventions that you set up for yourself and your team
- If you ever wanted to export your snippets you’ll notice one similarity with templates and that is that they are saved locally and outside of any project that you are working on. That means that it's a great opportunity to upload those to a repository to be able to share them or to change your workstation while keeping up to date.

## Table of content
* [File templates](File%20Templates/)
    * [MVVM Screen](File%20Templates/Storyboard%20UITemplates/View%20Model%20Controller.xctemplate/)
    * [Reactor storyboard screen](File%20Templates/Storyboard%20UITemplates/Reactor%20Controller.xctemplate/)
    * [Reactor code based screen](File%20Templates/Code%20UI%20BasedTemplates/Reactor%20Controller.xctemplate/)
    * [Other templates](File%20Templates/Other%20Templates/)
        * [Manager template](File%20Templates/Other%20Templates/Manager.xctemplate/)
        * [Endpoint template](File%20Templates/Other%20Templates/Endpoint.xctemplate/)
        * [Coordinator template](File%20Templates/Other%20Templates/Coordinator.xctemplate/)
* [Project template](Project%20Templates/Custom/)
    * [Contains xcConfigs](Project%20Templates/Custom/Good%20Project.xctemplate/Resources/Configs/)
    * [Cocoa pods](https://bitbucket.org/GoodRequest/temple/src/master/Project%20Templates/Custom/Good%20Cocoa.xctemplate/)
    * [Fastlane](Project%20Templates/Custom/Good%20Lane.xctemplate/)
    * [Firebase](Project%20Templates/Custom/Good%20Firebase.xctemplate/)
    * [Licences from settings](Project%20Templates/Custom/Good%20Licence.xctemplate/)
* [Target templates](Target%20Templates/)
    * [swiftlint autocorrect aggretate](Target%20Templates/Swiftlint%20Target.xctemplate/TemplateInfo.plist)
    * [anylint autocorrect aggretate](Target%20Templates/Anylint%20Target.xctemplate/TemplateInfo.plist)
    * [firebase config plist linker aggregate](Target%20Templates/Firebase%20Config%20Linker%20Target.xctemplate/TemplateInfo.plist)
* [Installation](#installation)
* [Create your own templates](#create-your-own-templates)
* [License](#license)
    
#warning: all templates are dependent on GoodrequestIOSExtensions, that you can fetch with SPM from: https://github.com/GoodRequest/GoodIOSExtensions

## Installation
First of all if you want to connect template to your template list you have to find the right folder to clone the repo.
Directory where you can add custom templates so they are visible in your template list in xcode:

```
/Users/$USER_NAME/Library/Developer/Xcode/Templates
```

### Git clone
Go to the folder and clone the the git repo contents

```
/Users/$USER_NAME/Library/Developer/Xcode/Templates
```
### Copy paste
Alternativelly you can copy the project templates and paste thme in the folder

```
/Users/$USER_NAME/Library/Developer/Xcode/Templates
```

## Create your own templates

Also if you want to create your own take inspiration from the already existing ones.
Directory where to find already existing Xcode templates to take inspiration from:

```
/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/File
```

## License
GoodIOSExtensions repository is released under the MIT license. See [LICENSE](LICENSE.md) for details.
