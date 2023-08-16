
#import "AppDelegate.h"

#import "MyPluginViewController.h"
#import <AudioUnit/AudioUnit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface AppDelegate ()
@property(atomic, strong) IBOutlet NSWindow* window;
@end


@implementation AppDelegate

@synthesize window = _window;

- (void)applicationDidFinishLaunching:(NSNotification*)aNotification
{
  MyPluginViewController* controller = [[MyPluginViewController alloc] init];

  AudioComponentDescription desc = {};
  desc.componentType = kAudioUnitType_Effect;
  desc.componentSubType = 'myPl';
  desc.componentManufacturer = 'oliL';

  NSError* error;
  [controller createAudioUnitWithComponentDescription:desc
                                                error:&error];

  [self.window.contentView addSubview:controller.view];
}


- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication*)sender
{
  return YES;
}


@end
