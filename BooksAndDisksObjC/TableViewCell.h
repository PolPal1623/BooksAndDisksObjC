//
//  TableViewCell.h
//  BooksAndDisksObjC
//
//  Created by Polynin Pavel on 31.07.16.
//  Copyright © 2016 Polynin Pavel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *category;

@end
