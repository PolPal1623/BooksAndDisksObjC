//
//  ViewController.m
//  BooksAndDisksObjC
//
//  Created by Polynin Pavel on 31.07.16.
//  Copyright © 2016 Polynin Pavel. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void) viewProduct {
    [self typeProduct].text = [self product][4];
    [self name].text = [NSString stringWithFormat:@"''%@''", [self product][0]];
    [self category].text = [NSString stringWithFormat:@"Categoty: %@", [self product][1]];
    [self barcode].text = [NSString stringWithFormat:@"Barcode: %@", [self product][3]];
    [self price].text = [NSString stringWithFormat:@"Price: %@ rub.", [self product][2]];
    
    if ([[self product][1] isEqual:@"Programming"]){
        [self aboutBook].text = [NSString stringWithFormat:@"Language: %@", [self product][6]];
    } else if ([[self product][1] isEqual:@"Cooking"]){
        [self aboutBook].text = [NSString stringWithFormat:@"Main ingredient is %@", [self product][7]];
    } else if ([[self product][1] isEqual:@"Esoterics"]){
        [self aboutBook].text = [NSString stringWithFormat:@"Minimum age of reader: %@", [self product][8]];
    }
    
    if ([[self product][4] isEqual:@"Book"]){
        [self pgesOfTypeDisk].text = [NSString stringWithFormat:@"Number of pages in the book: %@", [self product][5]];
    } else {
        [self pgesOfTypeDisk].text = [NSString stringWithFormat:@"Type disk: %@", [self product][9]];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self viewProduct];
}

@end
