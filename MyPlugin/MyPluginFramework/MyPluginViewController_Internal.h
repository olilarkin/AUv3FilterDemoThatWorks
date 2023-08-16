/*
	Copyright (C) 2016 Apple Inc. All Rights Reserved.
	See LICENSE.txt for this sample’s licensing information
	
	Abstract:
	View controller for the MyPlugin audio unit. Manages the interactions between a FilterView and the audio unit's parameters.
*/

#ifndef MyPluginViewController_Internal_h
#define MyPluginViewController_Internal_h

#import "FilterView.h"

@interface MyPluginViewController (FilterViewDelegate) <FilterViewDelegate>

@end

#endif /* MyPluginViewController_h */
