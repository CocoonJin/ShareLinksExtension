//
//  RequestHandler.m
//  ShareLinks
//
//  Created by Cocoon Jin on 15/8/11.
//  Copyright © 2015年 Kdan Mobile. All rights reserved.
//

#import "RequestHandler.h"

@implementation RequestHandler

- (void)beginRequestWithExtensionContext:(NSExtensionContext *)context {
    NSExtensionItem *extensionItem = [[NSExtensionItem alloc] init];
    
    extensionItem.userInfo = @{ @"uniqueIdentifier": @"uniqueIdentifierForSampleItem",
                                @"urlString": @"http://www.kdanmobile.com",
                                @"date": [NSDate date] };
    
    extensionItem.attributedTitle = [[NSAttributedString alloc] initWithString:@"KdanMobile title"];
    extensionItem.attributedContentText = [[NSAttributedString alloc] initWithString:@"KdanMobile description text"];
    
    extensionItem.attachments = @[ [[NSItemProvider alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"custormlogo" withExtension:@"png"]] ];
    
    [context completeRequestReturningItems:@[ extensionItem ] completionHandler:nil];
}

@end
