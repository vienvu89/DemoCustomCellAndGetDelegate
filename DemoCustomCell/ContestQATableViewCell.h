//
//  ContestQATableViewCell.h
//  DemoCustomCell
//
//  Created by Vien Vu  on 12/9/15.
//  Copyright © 2015 VienVu. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ContestCellDelegate <NSObject>

@required
- (void)didTapButtonAtIndexpath:(NSIndexPath *)indexPath posision:(NSInteger)position;

@end

@interface ContestQATableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *question;
@property (weak, nonatomic) IBOutlet UIButton *answer1;
@property (weak, nonatomic) IBOutlet UIButton *answer2;
@property (weak, nonatomic) IBOutlet UIButton *answer3;
@property (weak, nonatomic) IBOutlet UIButton *answer4;

@property (strong, nonatomic) NSIndexPath *indexPath;
@property (weak, nonatomic) id<ContestCellDelegate>delegate;

//- (void)configCellWithQuestion:()


@end
