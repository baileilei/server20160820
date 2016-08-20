//
//  GDDownloadOperation.h
//  GDSDWebImage
//
//  Created by GD on 16/8/20.
//  Copyright © 2016年 geduo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface GDDownloadOperation : NSOperation

@property (nonatomic,copy) NSString *imgURL;


@property (nonatomic,copy) void(^finishedBlock)(UIImage *image);

@end
