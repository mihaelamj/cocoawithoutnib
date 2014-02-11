//
//  AppDelegate.m
//  CocoaWithAppDelegate
//
//  Created by Mihaela Mihaljević Jakić on 10/02/14.
//  Copyright (c) 2014 Token d.o.o. All rights reserved.
//

#import "AppDelegate.h"
//@TODO: add menus in code

@implementation AppDelegate

- (id)init
{
    if (self = [super init]) {
        
        //allocate and initialize window
        NSTextView *textView = [[NSTextView alloc] initWithFrame:self.window.frame];
        [self.window setContentView:textView];
        [textView insertText:@"Hello OSX/Cocoa world!"];
    }
    return self;
}

- (void)applicationWillFinishLaunching:(NSNotification *)notification
{
    [self.window makeKeyAndOrderFront:self];
}

#pragma mark - Menus

- (void)setupMenus
{
    
}

#pragma mark - Public Properties

- (NSWindow *)window
{
    if (!_window) {
        _window = [[NSWindow alloc] initWithContentRect:NSMakeRect(100, 100, 400, 400) styleMask: (NSTitledWindowMask |NSClosableWindowMask|NSResizableWindowMask) backing:NSBackingStoreBuffered defer:NO];
    }
    return _window;
}



@end
