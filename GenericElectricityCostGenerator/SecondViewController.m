//
//  SecondViewController.m
//  GenericElectricityCostGenerator
//
//  Created by Firdous Ali on 04/12/2016.
//  Copyright © 2016 Firdous Ali. All rights reserved.
//

#import "SecondViewController.h"
#import "CategoryTableCell.h"
#import "UserDefaultsHelper.h"

@interface SecondViewController () <UITableViewDelegate, UITableViewDataSource>

@end

@implementation SecondViewController{
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITABLEVIEWDELEGATE

- (CGFloat)tableView:(UITableView *)tableView
heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 60;
}

- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath{}

#pragma mark - UITABLEVIEWDATASOURCE

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *cellIdentifier = [NSString stringWithFormat:@"cell -%d -%d" ,(int)indexPath.section,(int)indexPath.row];
    
    [tableView registerNib:[UINib nibWithNibName:@"CategoryTableCell" bundle:nil] forCellReuseIdentifier:cellIdentifier];
    CategoryTableCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell == nil) {
        cell = [[CategoryTableCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    return nil;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section{
    return 5;
}

@end
