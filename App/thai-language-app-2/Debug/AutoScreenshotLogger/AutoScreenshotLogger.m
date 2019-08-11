//
//  AutoScreenshotLogger.m
//  thailanguageapp
//
//  Created by Jonathan Winger-lang on 15/06/2016.
//  Copyright © 2016 jontelang productions. All rights reserved.
//

#import "AutoScreenshotLogger.h"
#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import <Foundation/Foundation.h>
#import <Photos/Photos.h>

@implementation AutoScreenshotLogger

// SSH
// http://cocoadocs.org/docsets/NMSSH/2.2.5/

+(void)kickOffAutomaticScreenShotAfterSeconds:(int)s{
    #if DEBUG
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(s * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        CGSize imageSize = [[UIScreen mainScreen] bounds].size;
        UIGraphicsBeginImageContextWithOptions(imageSize, NO, [UIScreen mainScreen].scale);
        
        CGContextRef context = UIGraphicsGetCurrentContext();
        
        // Without it it had an ugly gray thing..
        [[UIColor blackColor] setFill];
        CGContextFillRect(context, CGRectMake(0, 0, imageSize.width, imageSize.height));
        
        // Iterate over every window from back to front
        for (UIWindow *window in [[UIApplication sharedApplication] windows])
        {
            // I just don't want this in my screenshots..
            if( [window class] != NSClassFromString(@"FLEXWindow") )
            {
                //NSLog(@"Window: %@", [window class]);
                if (![window respondsToSelector:@selector(screen)] || [window screen] == [UIScreen mainScreen])
                {
                    // -renderInContext: renders in the coordinate space of the layer,
                    // so we must first apply the layer's geometry to the graphics context
                    CGContextSaveGState(context);
                    // Center the context around the window's anchor point
                    CGContextTranslateCTM(context, [window center].x, [window center].y);
                    // Apply the window's transform about the anchor point
                    CGContextConcatCTM(context, [window transform]);
                    // Offset by the portion of the bounds left of and above the anchor point
                    CGContextTranslateCTM(context,
                                          -[window bounds].size.width * [[window layer] anchorPoint].x,
                                          -[window bounds].size.height * [[window layer] anchorPoint].y);
                    
                    // Render the layer hierarchy to the current context
                    [[window layer] renderInContext:context];
                    
                    // Restore the context
                    CGContextRestoreGState(context);
                }
            }
        }
        // Retrieve the screenshot image
        UIImage *image2 = UIGraphicsGetImageFromCurrentImageContext();
        
        #if TARGET_OS_SIMULATOR
        [self saveToDesktop:image2];
        #else
        NSLog(@"Skipped screenshot, because I do most dev on simulator and it takes screenshots to there.");
        // [self insertImage:image2 intoAlbumNamed:@"screenshots_thai_app"];
        #endif
        
        NSLog(@"Took screenshot");
        UIGraphicsEndImageContext();
    });
    #endif
}

+ (void)insertImage:(UIImage *)image intoAlbumNamed:(NSString *)albumName {
    //Fetch a collection in the photos library that has the title "albumNmame"
    PHAssetCollection *collection = [self fetchAssetCollectionWithAlbumName: albumName];
    
    if (collection == nil) {
        //If we were unable to find a collection named "albumName" we'll create it before inserting the image
        [[PHPhotoLibrary sharedPhotoLibrary] performChanges:^{
            [PHAssetCollectionChangeRequest creationRequestForAssetCollectionWithTitle: albumName];
        } completionHandler:^(BOOL success, NSError * _Nullable error) {
            if (error != nil) {
                NSLog(@"Error inserting image into album: %@", error.localizedDescription);
            }
            
            if (success) {
                //Fetch the newly created collection (which we *assume* exists here)
                PHAssetCollection *newCollection = [self fetchAssetCollectionWithAlbumName:albumName];
                [self insertImage:image intoAssetCollection: newCollection];
            }
        }];
    } else {
        //If we found the existing AssetCollection with the title "albumName", insert into it
        [self insertImage:image intoAssetCollection: collection];
    }
}

+ (PHAssetCollection *)fetchAssetCollectionWithAlbumName:(NSString *)albumName {
    PHFetchOptions *fetchOptions = [PHFetchOptions new];
    //Provide the predicate to match the title of the album.
    fetchOptions.predicate = [NSPredicate predicateWithFormat:[NSString stringWithFormat:@"title == '%@'", albumName]];
    
    //Fetch the album using the fetch option
    PHFetchResult *fetchResult = [PHAssetCollection fetchAssetCollectionsWithType:PHAssetCollectionTypeAlbum subtype:PHAssetCollectionSubtypeAlbumRegular options:fetchOptions];
    
    //Assuming the album exists and no album shares it's name, it should be the only result fetched
    return fetchResult.firstObject;
}

+ (void)insertImage:(UIImage *)image intoAssetCollection:(PHAssetCollection *)collection {
    [[PHPhotoLibrary sharedPhotoLibrary] performChanges:^{
        
        //This will request a PHAsset be created for the UIImage
        PHAssetCreationRequest *creationRequest = [PHAssetCreationRequest creationRequestForAssetFromImage:image];
        
        //Create a change request to insert the new PHAsset in the collection
        PHAssetCollectionChangeRequest *request = [PHAssetCollectionChangeRequest changeRequestForAssetCollection:collection];
        
        //Add the PHAsset placeholder into the creation request.
        //The placeholder is used because the actual PHAsset hasn't been created yet
        if (request != nil && creationRequest.placeholderForCreatedAsset != nil) {
            [request addAssets: @[creationRequest.placeholderForCreatedAsset]];
        }
    } completionHandler:^(BOOL success, NSError * _Nullable error) {
        if (error != nil) {
            NSLog(@"Error inserting image into asset collection: %@", error.localizedDescription);
        }
    }];
}

+ (void)saveToDesktop:(UIImage*)image {
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSData *myImageData = UIImagePNGRepresentation(image);
    NSString *path = [NSString stringWithFormat:@"/Users/jontelang/Dropbox/Projekt/thai-language-app-2/Screenshots/screenshot_%f.png", [[NSDate date] timeIntervalSince1970]];
    [fileManager createFileAtPath:path contents:myImageData attributes:nil];
}

@end
