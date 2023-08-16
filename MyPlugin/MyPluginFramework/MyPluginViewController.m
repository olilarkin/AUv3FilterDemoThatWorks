#import <Cocoa/Cocoa.h>
#import <MyPluginFramework/MyPlugin.h>
#import "MyPluginViewController.h"

@interface MyPluginViewController (AUAudioUnitFactory)
{
}

@end

@implementation MyPluginViewController

- (void) viewDidLoad {
    [super viewDidLoad];
        
//    if (_audioUnit) {
//    }
    
    self.preferredContentSize = NSMakeSize(800, 500);
}

- (id)init {
  self = [super initWithNibName:@"MyPluginViewController"
                         bundle:[NSBundle bundleForClass:NSClassFromString(@"MyPluginViewController")]];
  return self;
}

- (void)dealloc {
}

#pragma mark-
- (MyPlugin *)getAudioUnit {
    return _audioUnit;
}

- (void)setAudioUnit:(MyPlugin *)audioUnit {
    _audioUnit = audioUnit;
//    dispatch_async(dispatch_get_main_queue(), ^{
//        if ([self isViewLoaded]) {
//        }
//    });
}

#pragma mark-
- (void)observeValueForKeyPath:(NSString *)keyPath
                      ofObject:(id)object
                        change:(NSDictionary<NSString *, id> *)change
                       context:(void *)context
{
    NSLog(@"MyPluginViewControler allParameterValues key path changed: %s\n", keyPath.UTF8String);
    
//    dispatch_async(dispatch_get_main_queue(), ^{
//
//    });
}

- (MyPlugin *) createAudioUnitWithComponentDescription:(AudioComponentDescription) desc error:(NSError **)error {
    self.audioUnit = [[MyPlugin alloc] initWithComponentDescription:desc error:error];
    
    return self.audioUnit;
}

@end
