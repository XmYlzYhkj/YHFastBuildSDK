//
//  YHFastBuild.m
//  Pods-YHFastBuildSDK_Example
//
//  Created by zxl on 2020/9/11.
//

#import "YHFastBuild.h"

@implementation YHFastBuild

+(void)buildJustInTime{
    
#if DEBUG
    [[NSBundle bundleWithPath:@"/Applications/InjectionIII.app/Contents/Resources/iOSInjection.bundle"] load];
#endif
    
}
@end
