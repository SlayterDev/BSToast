# BSToast
This component was originally written for AppleTV but should work just fine in iOS. Just remember to set the font size unless you want to be surprised ;)

![Demo](http://i.imgur.com/EONPskr.gif)

### Example
Drag the `BSToast.swift` file into your project and initialize a notification like so:

```swift
// initialize a frame where you'd like the notification to be displayed
let toast = BSToast(frame: myFrame, text: "Here\'s a notification!")
// Set font here if needed
toast.showInViewWithDuration(3.0, view: self.view) // Show the notification for 3 seconds
```

### Contributions
Standard MIT lisence. Submit a pull request if you'd like.
