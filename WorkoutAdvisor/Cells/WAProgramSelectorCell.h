//
//  WAProgramSelectorCell.h
//  WorkoutAdvisor
//
//  Created by João Lebre on 02/12/2015.
//  Copyright © 2015 jplebre. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WAProgramSelectorCell : UITableViewCell
-(void)configureCellWith:(NSString *)title subtitle:(NSString *)subtitle numberOfSessions:(NSString *)numberOfSessions;
@end
