//
//  CTMediator+TAConfirmOrder.m
//  TAConfirmOrderBusinessCategory
//
//  Created by Charon on 16/12/25.
//  Copyright © 2016年 Charon. All rights reserved.
//

#import "CTMediator+TAConfirmOrder.h"

@implementation CTMediator (TAConfirmOrder)

- (UIViewController *)confirmOrderViewControllerWithGoodsId:(NSString *)goodsId goodsName:(NSString *)goodsName ConfirmComplete:(dispatch_block_t)confirmComplete
{
    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
    params[@"goodsId"] = goodsId;
    params[@"goodsName"] = goodsName;
    params[@"completeBlock"] = confirmComplete;
    return [self performTarget:@"TAConfirmOrder" action:@"ConfirmOrderViewController" params:params shouldCacheTarget:NO];
}

@end
