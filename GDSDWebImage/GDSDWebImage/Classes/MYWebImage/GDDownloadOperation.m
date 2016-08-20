//
//  GDDownloadOperation.m
//  GDSDWebImage
//
//  Created by GD on 16/8/20.
//  Copyright © 2016年 geduo. All rights reserved.
//

#import "GDDownloadOperation.h"

@implementation GDDownloadOperation

-(void)main{
    NSLog(@"下载ing %@",[NSThread currentThread]);
    
    //URL
    NSURL *url = [NSURL URLWithString:_imgURL];
    
    NSData *data = [NSData dataWithContentsOfURL:url];
    
    
    UIImage *image = [UIImage imageWithData:data];
    
    [[NSOperationQueue mainQueue] addOperationWithBlock:^{
        self.finishedBlock(image);
    }];
    
}

@end
