//
//  CTMediator+TAGoodsDetail.m
//  TAGoodsDetailBusinessCategory
//
//  Created by Charon on 16/12/25.
//  Copyright © 2016年 Charon. All rights reserved.
//

#import "CTMediator+TAGoodsDetail.h"

@implementation CTMediator (TAGoodsDetail)

- (UIViewController *)goodsDetailViewControllerWithGoodsId:(NSString *)goodsId goodsName:(NSString *)goodsName
{
    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
    params[@"goodsId"] = goodsId;
    params[@"goodsName"] = goodsName;
    return [self performTarget:@"TAGoodsDetail" action:@"GoodsDetailViewController" params:params shouldCacheTarget:NO];
}

@end
