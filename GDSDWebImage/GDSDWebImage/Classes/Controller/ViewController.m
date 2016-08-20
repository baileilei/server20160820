//
//  ViewController.m
//  GDSDWebImage
//
//  Created by GD on 16/8/20.
//  Copyright © 2016年 geduo. All rights reserved.
//

#import "ViewController.h"
#import "GDDownloadOperation.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController{
    NSOperationQueue *_queue;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _queue = [[NSOperationQueue alloc] init];
    //初始化自定义操作!!!
    
    GDDownloadOperation *operation = [[GDDownloadOperation alloc] init];
    
    operation.imgURL = @"http://paper.taizhou.com.cn/tzwb/res/1/2/2015-01/20/12/res03_attpic_brief.jpg";
    
    
    [operation setFinishedBlock:^(UIImage *image) {
        //
        NSLog(@"%@    %@",image,[NSThread currentThread]);
        
        self.imageView.image = image;
    }];
    
    [_queue addOperation:operation];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
