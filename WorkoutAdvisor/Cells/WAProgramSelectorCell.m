//
//  WAProgramSelectorCell.m
//  WorkoutAdvisor
//
//  Created by João Lebre on 02/12/2015.
//  Copyright © 2015 jplebre. All rights reserved.
//

#import "WAProgramSelectorCell.h"
@interface WAProgramSelectorCell()
@property (nonatomic, weak) IBOutlet UILabel *title;
@property (nonatomic, weak) IBOutlet UILabel *subtitle;
@property (nonatomic, weak) IBOutlet UILabel *numberOfSessions;
@property (nonatomic, weak) IBOutlet UIImageView *programThumbnail;
@end

@implementation WAProgramSelectorCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

}

-(void)configureCellWith:(NSString *)title subtitle:(NSString *)subtitle numberOfSessions:(NSString *)numberOfSessions;
{
    self.title.text = title;
    self.subtitle.text = subtitle;
    self.numberOfSessions.text = [NSString stringWithFormat:@"Sessions: %@", numberOfSessions];
    self.programThumbnail.image = [UIImage imageNamed:@"GenericGymIcon"];
}
@end
