//
//  TableViewController.h
//  BooksAndDisksObjC
//
//  Created by Polynin Pavel on 31.07.16.
//  Copyright © 2016 Polynin Pavel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UITableViewController {

NSArray* productList;
    
}

- (NSArray*) product: (NSString*) name category: (NSString*) category price: (NSString*) price barcode: (NSString*) barcode typeProduct: (NSString*) typeProduct numberOfPages: (NSString*) numberOfPages programmingLanguage: (NSString*) programmingLanguage mainIngredient: (NSString*) mainIngredient minAgeReader: (NSString*) minAgeReader typeDisk: (NSString*) typeDisk;
- (NSArray*) productTypeName: (NSString*) category;

@end
