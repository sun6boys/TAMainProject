//
//  Target_TAGoodsDetail.m
//  TAGoodsDetail
//
//  Created by Charon on 16/12/25.
//  Copyright © 2016年 Charon. All rights reserved.
//

#import "Target_TAGoodsDetail.h"
#import "TAGoodsDetailViewController.h"

@implementation Target_TAGoodsDetail

- (UIViewController *)Action_GoodsDetailViewController:(NSDictionary *)params
{
    TAGoodsDetailViewController *goodsDetailVC = [[TAGoodsDetailViewController alloc] init];
    goodsDetailVC.goodsId = params[@"goodsId"];
    goodsDetailVC.goodsName = params[@"goodsName"];
    return goodsDetailVC;
}

@end
