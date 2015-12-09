//
//  ContestQATableViewCell.m
//  DemoCustomCell
//
//  Created by Vien Vu  on 12/9/15.
//  Copyright © 2015 VienVu. All rights reserved.
//

#import "ContestQATableViewCell.h"

@implementation ContestQATableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)answer1IsTapped:(id)sender {
    if (self.delegate) {
        [self.delegate didTapButtonAtIndexpath:self.indexPath posision:1];
    }
    
}
- (IBAction)answer2IsTapped:(id)sender {
    if (self.delegate) {
        [self.delegate didTapButtonAtIndexpath:self.indexPath posision:2];
    }
}
- (IBAction)answer3IsTapped:(id)sender {
    if (self.delegate) {
        [self.delegate didTapButtonAtIndexpath:self.indexPath posision:3];
    }
}

- (IBAction)answer4IsTapped:(id)sender {
    if (self.delegate) {
        [self.delegate didTapButtonAtIndexpath:self.indexPath posision:4];
    }
}

@end
