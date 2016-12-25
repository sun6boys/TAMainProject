//
//  Target_TAConfirmOrder.m
//  TAConfirmOrder
//
//  Created by Charon on 16/12/25.
//  Copyright © 2016年 Charon. All rights reserved.
//

#import "Target_TAConfirmOrder.h"
#import "TAConfirmOrderViewController.h"

@implementation Target_TAConfirmOrder

- (UIViewController *)Action_ConfirmOrderViewController:(NSDictionary *)params
{
    TAConfirmOrderViewController *confirmOrderVC = [[TAConfirmOrderViewController alloc] init];
    confirmOrderVC.goodsId = params[@"goodsId"];
    confirmOrderVC.goodsName = params[@"goodsName"];
    confirmOrderVC.confirmComplete = params[@"completeBlock"];
    return confirmOrderVC;
}

@end
