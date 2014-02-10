//
//  main.m
//  CocoaWIthoutNib
//
//  Created by Mihaela Mihaljević Jakić on 10/02/14.
//  Copyright (c) 2014 Token d.o.o. All rights reserved.
//
// code form: http://glampert.blogspot.com/2012/11/osxcocoa-window-without-xcode-and.html
// adapted for ARC
//

#import "Cocoa/Cocoa.h"

int main(int argc, const char * argv[])
{
    
    // Create a shared app instance.
    // This will initialize the global variable
    // 'NSApp' with the application instance.
    [NSApplication sharedApplication];
    
    // Create a window:
    
    // Style flags
    NSUInteger windowStyle = (NSTitledWindowMask  | NSClosableWindowMask | NSResizableWindowMask);
    
    // Window bounds (x, y, width, height)
    NSRect windowRect = NSMakeRect(100, 100, 400, 400);
    NSWindow *window = [[NSWindow alloc] initWithContentRect:windowRect styleMask:windowStyle backing:NSBackingStoreBuffered defer:NO];
    
    // This will add a simple text view to the window,
    // so we can write a test string on it.
    NSTextView *textView = [[NSTextView alloc] initWithFrame:windowRect];
    
    [window setContentView:textView];
    [textView insertText:@"Hello OSX/Cocoa world!"];
    
    // TODO: Create app delegate to handle system events.
    // TODO: Create menus (especially Quit!)
    
    // Show window and run event loop
    [window orderFrontRegardless]; 
    [NSApp run];
    
    return (0); 
}
