# JKTagListView

[![Version](https://img.shields.io/cocoapods/v/JKTagListView.svg?style=flat)](http://cocoapods.org/pods/JKTagListView)
[![License](https://img.shields.io/cocoapods/l/JKTagListView.svg?style=flat)](http://cocoapods.org/pods/JKTagListView)
[![Platform](https://img.shields.io/cocoapods/p/JKTagListView.svg?style=flat)](http://cocoapods.org/pods/JKTagListView)


## Installation

JKTagListView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "JKTagListView"
```

## Usage

```objc
JKTagListView *tagListView = [[JKTagListView alloc] init];

tagListView.tagBackgroundColor = [UIColor whiteColor];
tagListView.tagBorderWidth = .5f;
tagListView.tagBorderColor = [UIColor grayColor];
tagListView.tagCornerRadius = 5.0f;

[tagListView addTag:@"JungleKim"];
[tagListView addTags:@["Snorlax", "Pikachu"]];
```

## TODO
1. TagView Tapped Event

## Author

JungleKim, snorlax.jungle@gmail.com

## License

`JKTagListView` is under WTFPL. You can do what the fuck you want with this shit. See [LICENSE](https://github.com/JungleKim/JKTagListView/blob/master/LICENSE) file for more info.
