//
//  ViewController.m
//  Vegetable
//
//  Created by Build User on 1/28/14.
//  Copyright (c) 2014 Pitt. All rights reserved.
//

#import "ViewController.h"
#import "Vegetable.h"

@interface ViewController ()
@property (nonatomic, strong) NSMutableArray *cart;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.cart = [[NSMutableArray alloc] init];
    NSString *itemName;
    NSString *vegetableName= @"Potato";
    NSString *vegetableName2= @"Onion";
    NSString *vegetableName3= @"Pumpkin";
    
    for (int i = 0; i<2; i++) {
        itemName = [[NSString alloc] initWithFormat:@"%@ %d", vegetableName, i];
        Vegetable *tempVegetable = [[Vegetable alloc] initWithName:itemName andShape:@"Curved" andColor:@"Yellow"];
        [self.cart addObject:tempVegetable];
    }
    
    for (int i = 0; i<2; i++) {
        itemName = [[NSString alloc] initWithFormat:@"%@ %d", vegetableName2, i];
        Vegetable *tempVegetable = [[Vegetable alloc] initWithName:itemName andShape:@"Curved" andColor:@"Yellow"];
        [self.cart addObject:tempVegetable];
    }
    
    for (int i = 0; i<2; i++) {
        itemName = [[NSString alloc] initWithFormat:@"%@ %d", vegetableName3, i];
        Vegetable *tempVegetable = [[Vegetable alloc] initWithName:itemName andShape:@"Curved" andColor:@"Yellow"];
        [self.cart addObject:tempVegetable];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.cart count];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString *identifier = @"vegetableCell";
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identifier];
    
    cell.textLabel.text = [[self.cart objectAtIndex:[indexPath row]] name];
    return cell;
    
}




@end
