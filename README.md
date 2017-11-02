# Segment-Taplytics

[![Version](https://img.shields.io/cocoapods/v/Segment-Taplytics.svg?style=flat)](http://cocoapods.org/pods/Segment-Taplytics)
[![License](https://img.shields.io/cocoapods/l/Segment-Taplytics.svg?style=flat)](http://cocoapods.org/pods/Segment-Taplytics)
[![Platform](https://img.shields.io/cocoapods/p/Segment-Taplytics.svg?style=flat)](http://cocoapods.org/pods/Segment-Taplytics)

## Usage

After adding the dependency, you must register the integration with our SDK.  To do this, import the Taplytics integration in your `AppDelegate`:

```
#import <Segment-Taplytics/SEGTaplyticsIntegrationFactory.h>
```

And add the following lines:

```
NSString *const SEGMENT_WRITE_KEY = @" ... ";
SEGAnalyticsConfiguration *config = [SEGAnalyticsConfiguration configurationWithWriteKey:SEGMENT_WRITE_KEY];

[config use:[SEGTaplyticsIntegrationFactory instance]];

[SEGAnalytics setupWithConfiguration:config];

```

### Initialize Taplytics without Segment

If you would like to initialize Taplytics yourself to leverage functionality required on initialization, you can use Taplytics native methods to initialize then use `skipInitialization` to skip initializing through Segment.

```
NSString *const SEGMENT_WRITE_KEY = @" ... ";
SEGAnalyticsConfiguration *config = [SEGAnalyticsConfiguration configurationWithWriteKey:SEGMENT_WRITE_KEY];

// Add Taplytics methods to initialize and any functionality required prior to initialization here.
[Taplytics startTaplyticsAPIKey:<apiKey>....];

[config use:[SEGTaplyticsIntegrationFactory skipInitialization]];

[SEGAnalytics setupWithConfiguration:config];
```

## License

```
WWWWWW||WWWWWW
 W W W||W W W
      ||
    ( OO )__________
     /  |           \
    /o o|    MIT     \
    \___/||_||__||_|| *
         || ||  || ||
        _||_|| _||_||
       (__|__|(__|__|

The MIT License (MIT)

Copyright (c) 2014 Segment, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
