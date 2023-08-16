/*
	Copyright (C) 2016 Apple Inc. All Rights Reserved.
	See LICENSE.txt for this sample’s licensing information
	
	Abstract:
	`MyPluginViewController` is the app extension's principal class, responsible for creating both the audio unit and its view.
*/

#import "MyPluginViewController+AUAudioUnitFactory.h"
#import <MyPlugin.h>

@implementation MyPluginViewController (AUAudioUnitFactory)

- (MyPlugin *) createAudioUnitWithComponentDescription:(AudioComponentDescription) desc error:(NSError **)error {
    self.audioUnit = [[MyPlugin alloc] initWithComponentDescription:desc error:error];
    return self.audioUnit;
}

@end
