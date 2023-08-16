/*
	Copyright (C) 2016 Apple Inc. All Rights Reserved.
	See LICENSE.txt for this sample’s licensing information
	
	Abstract:
	View controller for the MyPlugin audio unit. Manages the interactions between a FilterView and the audio unit's parameters.
*/

#ifndef MyPluginViewController_h
#define MyPluginViewController_h

#import <CoreAudioKit/AUViewController.h>

@class MyPlugin;

@interface MyPluginViewController : AUViewController

@property (nonatomic)MyPlugin *audioUnit;

@end

#endif /* MyPluginViewController_h */
