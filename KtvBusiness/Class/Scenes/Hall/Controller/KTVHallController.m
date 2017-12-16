//
//  KTVHallController.m
//  KtvBusiness
//
//  Created by pingjun lin on 2017/12/9.
//  Copyright © 2017年 ktv. All rights reserved.
//

#import "KTVHallController.h"
#import "KTVOrderCell.h"

@interface KTVHallController ()<UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableview;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segment;

@end

@implementation KTVHallController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"接单大厅";
    
    self.tableview.delegate = self;
    self.tableview.dataSource = self;
    self.tableview.backgroundColor = [UIColor ktvBG];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - UITableViewDelegate

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 210.0f;
}

#pragma mark - UITableViewDataSource

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    KTVOrderCell *cell = [tableView dequeueReusableCellWithIdentifier:@"KTVOrderCell"];
    return cell;
}

#pragma mark - UISegmentController Value Change

- (IBAction)segmentValueChange:(UISegmentedControl *)sender {
    CLog(@"--->>> %@", @(sender.selectedSegmentIndex));
}


@end
