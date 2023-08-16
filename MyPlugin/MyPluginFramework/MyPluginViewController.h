#ifndef MyPluginViewController_h
#define MyPluginViewController_h

#import <CoreAudioKit/AUViewController.h>

@class MyPlugin;

@interface MyPluginViewController : AUViewController

@property (nonatomic)MyPlugin *audioUnit;

@end

#endif /* MyPluginViewController_h */
