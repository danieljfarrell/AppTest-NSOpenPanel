//
//  AppDelegate.m
//  AppTestNSOpenPanel
//
//  Created by Daniel Farrell on 06/02/2013.
//  Copyright (c) 2013 Dan. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

-(void) importUsingNSOpenPanel:(id)sender {
    
    NSOpenPanel *panel = [NSOpenPanel openPanel];
    
    // Configure your panel the way you want it
    [panel setCanChooseFiles:YES];
    [panel setCanChooseDirectories:YES];
    [panel setAllowsMultipleSelection:NO];
    //[panel setAllowedFileTypes:[NSArray arrayWithObject:@"txt"]];
    
    //__unsafe_unretained MenuBarController *weakSelf = self;
    [panel beginWithCompletionHandler:^(NSInteger result){
        if (result == NSFileHandlingPanelOKButton) {
            
            //            for (NSURL *fileURL in [panel URLs]) {
            //                weakSelf.importFileURL = fileURL;
            //                break;
            //            }
        }
        
    }];
    
    
}
@end

