//
//  ViewController.h
//  BooksAndDisksObjC
//
//  Created by Polynin Pavel on 31.07.16.
//  Copyright © 2016 Polynin Pavel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController 
@property NSArray* product;
@property (weak, nonatomic) IBOutlet UILabel *typeProduct;
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *category;
@property (weak, nonatomic) IBOutlet UILabel *pgesOfTypeDisk;
@property (weak, nonatomic) IBOutlet UILabel *aboutBook;
@property (weak, nonatomic) IBOutlet UILabel *barcode;
@property (weak, nonatomic) IBOutlet UILabel *price;

-(void) viewProduct;

@end

