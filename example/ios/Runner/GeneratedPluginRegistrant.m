//
//  Generated file. Do not edit.
//

#import "GeneratedPluginRegistrant.h"

#if __has_include(<e2e/E2EPlugin.h>)
#import <e2e/E2EPlugin.h>
#else
@import e2e;
#endif

#if __has_include(<ext_video_player/FLTExtVideoPlayerPlugin.h>)
#import <ext_video_player/FLTExtVideoPlayerPlugin.h>
#else
@import ext_video_player;
#endif

@implementation GeneratedPluginRegistrant

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
  [E2EPlugin registerWithRegistrar:[registry registrarForPlugin:@"E2EPlugin"]];
  [FLTExtVideoPlayerPlugin registerWithRegistrar:[registry registrarForPlugin:@"FLTExtVideoPlayerPlugin"]];
}

@end
