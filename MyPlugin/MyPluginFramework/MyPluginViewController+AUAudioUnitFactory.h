/*
	Copyright (C) 2016 Apple Inc. All Rights Reserved.
	See LICENSE.txt for this sample’s licensing information
	
	Abstract:
	`MyPluginViewController` is the app extension's principal class, responsible for creating both the audio unit and its view.
*/

#import <CoreAudioKit/AUViewController.h>
//#import <MyPluginFramework/MyPluginFramework.h>
#import <MyPluginViewController.h>

@interface MyPluginViewController (AUAudioUnitFactory) <AUAudioUnitFactory>

@end
