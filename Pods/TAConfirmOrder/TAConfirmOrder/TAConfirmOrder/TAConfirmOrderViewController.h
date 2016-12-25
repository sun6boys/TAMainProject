//
//  TAConfirmOrderViewController.h
//  TAConfirmOrder
//
//  Created by Charon on 16/12/25.
//  Copyright © 2016年 Charon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TAConfirmOrderViewController : UIViewController

@property (nonatomic, copy) NSString *goodsId;
@property (nonatomic, copy) NSString *goodsName;
@property (nonatomic, copy) dispatch_block_t confirmComplete;
@end
