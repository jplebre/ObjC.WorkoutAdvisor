//
//  WAProgramSelectorViewController.m
//  WorkoutAdvisor
//
//  Created by João Lebre on 02/12/2015.
//  Copyright © 2015 jplebre. All rights reserved.
//

#import "WAProgramSelectorViewController.h"
#import "WAProgramSelectorCell.h"

@interface WAProgramSelectorViewController () <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, weak) IBOutlet UITableView *tableView;
@end

NSString *const kProgramSelectionCell = @"ProgramSelectionCell";

@implementation WAProgramSelectorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createBarButton];

    self.title = @"Choose your program";
}

//Add New Program
- (void)createBarButton
{
    UIBarButtonItem *addNewProgramButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addNewProgram)];
    self.navigationItem.rightBarButtonItem = addNewProgramButton;
}

- (void)addNewProgram
{
    NSLog(@"Clicked Add New Program Button");
}

#pragma mark UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
{
    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"Entered cellforrwoatindexpath");
    WAProgramSelectorCell *programCell = [tableView dequeueReusableCellWithIdentifier: kProgramSelectionCell];
    [programCell configureCellWith:@"Title" subtitle:@"SubTitle" numberOfSessions:[NSString stringWithFormat:@"%ld", indexPath.row]];
    return programCell;
}


@end
