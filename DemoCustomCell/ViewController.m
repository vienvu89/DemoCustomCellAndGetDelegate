//
//  ViewController.m
//  DemoCustomCell
//
//  Created by Vien Vu  on 12/9/15.
//  Copyright © 2015 VienVu. All rights reserved.
//

#import "ViewController.h"
#import "ContestQATableViewCell.h"

@interface ViewController ()<UITabBarDelegate, UITableViewDataSource, ContestCellDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (strong, nonatomic) NSArray *getContestQArray;
@property (strong, nonatomic) NSArray *getAnswer1Array;
@property (strong, nonatomic) NSArray *getAnswer2Array;
@property (strong, nonatomic) NSArray *getAnswer3Array;
@property (strong, nonatomic) NSArray *getAnswer4Array;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.getContestQArray  = @[@"asdfas", @"bsdfab", @"czxczx"];
    self.getAnswer1Array = @[@"1asdfas", @"1asdfab", @"1bzxczx"];
    self.getAnswer2Array  = @[@"2asdfas", @"2bsdfab", @"2czxczx"];
    self.getAnswer3Array  = @[@"3asdfas", @"3bsdfab", @"3czxczx"];
    self.getAnswer4Array  = @[@"4asdfas", @"4bsdfab", @"4czxczx"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableviewDataSource 

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.getContestQArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellId = @"Cell";
    ContestQATableViewCell *cell =(ContestQATableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellId];
    
    cell.question.text = [_getContestQArray objectAtIndex:indexPath.row];
    NSString *str1 = [_getAnswer1Array objectAtIndex:indexPath.row];
    NSString *str2 = [_getAnswer2Array objectAtIndex:indexPath.row];
    NSString *str3 = [_getAnswer3Array objectAtIndex:indexPath.row];
    NSString *str4 = [_getAnswer4Array objectAtIndex:indexPath.row];
    [cell.answer1 setTitle:str1 forState:UIControlStateNormal];
    [cell.answer2 setTitle:str2 forState:UIControlStateNormal];
    [cell.answer3 setTitle:str3 forState:UIControlStateNormal];
    [cell.answer4 setTitle:str4 forState:UIControlStateNormal];
    cell.indexPath = indexPath;
    cell.delegate = self;
    
    return cell;
}

#pragma mark -

- (void)didTapButtonAtIndexpath:(NSIndexPath *)indexPath posision:(NSInteger)position {
    //Your code here
}

@end
