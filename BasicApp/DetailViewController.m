//
//  DetailViewController.m
//  BasicApp
//
//  Created by Yutaro Tanaka on 2013/11/13.
//  Copyright (c) 2013年 Yutaro Tanaka. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
- (void)configureView;
@end

@implementation DetailViewController
@synthesize myStr;

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{

}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
}

- (void)viewDidLoad
{
    // 下層画面が生成され、表示する準備ができたときの処理
    [super viewDidLoad];
    [self configureView];
    
    self.myLabel.text = myStr;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
