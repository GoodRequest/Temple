# 🕍 Xcode templates 

If you are like me you love writing iOS code but there is nothing that breaks your creativity more than boilerplate code and having to think about it while some other more creative solutions might reside in your mind at the same time. Even if you have a pretty good idea about your architecture it is surely a waste of time to write boilerplate since it’s just repeating code. All you need is a bunch of good templates and writing code in any architecture should be easier for you as well and easier to get into for new members of the team. But it has a catch. Xcode templates aren’t exactly what you would call a well-documented part of the tool. That is why I decided to bring you through the process of building these from scratch to save you the trouble I went through with collecting the knowledge on this subject.
Writing templates has these advantages:
Makes you save time in the long run if you take time to maintain and write your templates well
It takes less time to onboard new people because they will not work from scratch 
It helps maintain code conventions that you set up for yourself and your team
If you ever wanted to export your snippets you’ll notice one similarity with templates and that is that they are saved locally and outside of any project that you are working on. That means that it's a great opportunity to upload those to a repository to be able to share them or to change your workstation while keeping up to date.

Directory where you can find custom templates 

<pre><code>/Users/$USER_NAME/Library/Developer/Xcode/Templates
</code></pre>

Directory where to find already existing Xcode templates to take inspiration from:

<pre><code>/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/File
</code></pre>

Blank Template.plist file without any options:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>Kind</key>
	<string>Xcode.IDEKit.TextSubstitutionFileTemplateKind</string>
	<key>Platforms</key>
	<array>
		<string>com.apple.platform.iphoneos</string>
	</array>
	<key>Options</key>
	<array>
	</array>
</dict>
</plist>
```


