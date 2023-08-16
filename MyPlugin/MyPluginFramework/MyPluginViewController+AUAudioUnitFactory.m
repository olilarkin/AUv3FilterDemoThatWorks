#import "MyPluginViewController+AUAudioUnitFactory.h"
#import <MyPlugin.h>

@implementation MyPluginViewController (AUAudioUnitFactory)

- (MyPlugin *) createAudioUnitWithComponentDescription:(AudioComponentDescription) desc error:(NSError **)error {
    self.audioUnit = [[MyPlugin alloc] initWithComponentDescription:desc error:error];
    return self.audioUnit;
}

@end
