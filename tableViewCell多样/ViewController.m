//
//  ViewController.m
//  tableViewCell多样
//
//  Created by 强淑婷 on 2019/7/25.
//  Copyright © 2019 强淑婷. All rights reserved.
//

#import "ViewController.h"
#import "OneTableViewCell.h"
#import "TwoTableViewCell.h"
#import "ProfileModel.h"
#import "DoubanModel.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) DoubanModel *doubanModel;
@property (nonatomic, strong) ProfileDataModel *profileModel;
@property (nonatomic, copy) NSArray *infoDataModel;
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [_tableView registerClass:[OneTableViewCell class] forCellReuseIdentifier:@"profileCell"];
    [_tableView registerClass:[TwoTableViewCell class] forCellReuseIdentifier:@"doubanCell"];
    [self.view addSubview:_tableView];
    
    NSString *pathBundle = [[NSBundle mainBundle]pathForResource:@"ServerData" ofType:@"json"];
    NSData *data = [[NSData alloc] initWithContentsOfFile:pathBundle];
    NSDictionary *jsonData = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    NSLog(@"%@--jsonData---", jsonData);
    NSError *error;
    _profileModel = [[ProfileDataModel alloc] initWithDictionary:jsonData[@"data"] error:&error];
    NSLog(@"%@", error);
    NSLog(@"%@---_profileModel----", _profileModel);
    
    NSURLRequest *req = [NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.douban.com/j/app/radio/channels"]];
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:req completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        //data: 响应体信息
        //response: 响应头信息
        //error: 错误信息�
        //解析数据
//        NSStringEncoding myEncoding = CFStringConvertEncodingToNSStringEncoding (kCFStringEncodingGB_18030_2000);
        NSString *str = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        //NSString *str = [[NSString alloc]initWithData:data encoding:myEncoding];
        NSData *utf8Data = [str dataUsingEncoding:NSUTF8StringEncoding];
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:utf8Data options:kNilOptions error:nil];
        self->_doubanModel = [[DoubanModel alloc] initWithDictionary:dict error:nil];
        NSLog(@"%@--phonedata---", self->_doubanModel);
        dispatch_async(dispatch_get_main_queue(), ^{
            [self->_tableView reloadData];
        });
        
        
    }];
    [dataTask resume];
    
    
   

    // Do any additional setup after loading the view.
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 3;
    } else {
        return [_doubanModel channels].count;
    }
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    id model;
    _infoDataModel = [NSArray arrayWithObjects:_profileModel, _doubanModel, nil];
    NSLog(@"%@--_infoDataModel---", _infoDataModel);
    model = self.infoDataModel[indexPath.section];
    if (model) {
        if ([model conformsToProtocol:@protocol(ProfileModelProtocol)] && [model respondsToSelector:@selector(getReuseldentifier)]) {
            id<ProfileModelProtocol> tempModel = (id<ProfileModelProtocol>)model;
            UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[tempModel getReuseldentifier] forIndexPath:indexPath];
            if ([cell conformsToProtocol:@protocol(ProfileCellProtocol)] && [cell respondsToSelector:@selector(updateWithModel:andIndexRow:)]) {
                id<ProfileCellProtocol> tempCell = (id<ProfileCellProtocol>)cell;
                [tempCell updateWithModel:model andIndexRow:indexPath.row];
            }
            return cell;
        }
    }
    return  [[UITableViewCell alloc] initWithFrame:CGRectZero];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}
@end
