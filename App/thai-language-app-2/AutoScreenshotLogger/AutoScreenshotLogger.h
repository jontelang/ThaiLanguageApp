//
//  AutoScreenshotLogger.h
//  thailanguageapp
//
//  Created by Jonathan Winger-lang on 15/06/2016.
//  Copyright © 2016 jontelang productions. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AutoScreenshotLogger : NSObject

+(void)kickOffAutomaticScreenShotAfterSeconds:(int)s;

@end
