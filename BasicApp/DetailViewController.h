//
//  DetailViewController.h
//  BasicApp
//
//  Created by Yutaro Tanaka on 2013/11/13.
//  Copyright (c) 2013年 Yutaro Tanaka. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
