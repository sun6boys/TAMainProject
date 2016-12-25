//
//  ViewController.m
//  TAMainProject
//
//  Created by Charon on 16/12/25.
//  Copyright © 2016年 Charon. All rights reserved.
//

#import "ViewController.h"
#import <TAGoodsDetailBusinessCategory/CTMediator+TAGoodsDetail.h>

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, weak) IBOutlet UITableView *tableView;
@property (nonatomic, copy) NSArray *dataSource;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"首页";
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellId"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"CellId"];
    }
    cell.textLabel.text = self.dataSource[indexPath.row][@"goodsName"];
    cell.detailTextLabel.text = self.dataSource[indexPath.row][@"goodsDesc"];
    return cell;
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSDictionary *goodsItem = self.dataSource[indexPath.row];
    UIViewController *goodsDetailVC = [[CTMediator sharedInstance] goodsDetailViewControllerWithGoodsId:goodsItem[@"goodsId"] goodsName:goodsItem[@"goodsName"]];
    if (goodsDetailVC) {
        [self.navigationController pushViewController:goodsDetailVC animated:YES];
    }
}

#pragma mark - getters
- (NSArray *)dataSource
{
    if (_dataSource == nil) {
        _dataSource = @[
                        @{
                            @"goodsName" : @"小熊饼干",
                            @"goodsDesc" : @"20g,美国产",
                            @"goodsId" : @"12306"
                         },
                        @{
                            @"goodsName" : @"法式软面包",
                            @"goodsDesc" : @"100g,国产",
                            @"goodsId" : @"45789"
                         }
                        ];
    }
    return _dataSource;
}
@end
