//
//  main.m
//  CocoaWithAppDelegate
//
//  Created by Mihaela Mihaljević Jakić on 10/02/14.
//  Copyright (c) 2014 Token d.o.o. All rights reserved.
//
// code form : http://stackoverflow.com/questions/2997333/creating-a-cocoa-application-without-nib-files
// adapted for ARC
//

#import <Cocoa/Cocoa.h>

#import "AppDelegate.h"


int main(int argc, char *argv[])
{
    NSApplication *application = [NSApplication sharedApplication];
    
    AppDelegate *appDelegate = [[AppDelegate alloc] init];
    
    //set global application object's delegate to our AppDelegate class
    [application setDelegate:appDelegate];
    [application run];
    
    return EXIT_SUCCESS;
}


