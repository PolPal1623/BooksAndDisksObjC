//
//  TableViewController.m
//  BooksAndDisksObjC
//
//  Created by Polynin Pavel on 31.07.16.
//  Copyright © 2016 Polynin Pavel. All rights reserved.
//

#import "TableViewController.h"
#import "TableViewCell.h"
#import "ViewController.h"

@interface TableViewController ()
@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    productList = [NSArray arrayWithObjects:
[self product: @"100 dishes for dinner" category: @"Cooking" price: @"234" barcode: @"2345645234" typeProduct: @"Book" numberOfPages: @"120" programmingLanguage: @" " mainIngredient: @"Chiken" minAgeReader: @" " typeDisk: @" "],
[self product: @"Objective-C it is Cool" category: @"Programming" price: @"1200" barcode: @"2345667234" typeProduct: @"Book" numberOfPages: @"678" programmingLanguage: @"Objective-C" mainIngredient: @" " minAgeReader: @" " typeDisk: @" "],
[self product: @"Best sing 2015" category: @"Music" price: @"130" barcode: @"2345634234" typeProduct: @"Disk" numberOfPages: @" 8" programmingLanguage: @" " mainIngredient: @" " minAgeReader: @" " typeDisk: @"CD"],
[self product: @"The spiritual path" category: @"Esoterics" price: @"102" barcode: @"2345634290" typeProduct: @"Book" numberOfPages: @"56" programmingLanguage: @" " mainIngredient: @" " minAgeReader: @"25" typeDisk: @" "],
[self product: @"Titanik" category: @"Film" price: @"234" barcode: @"2345678290" typeProduct: @"Disk" numberOfPages: @" " programmingLanguage: @" " mainIngredient: @" " minAgeReader: @" " typeDisk: @"DVD"],
[self product: @"Photoshop" category: @"Soft" price: @"1600" barcode: @"2565678290" typeProduct: @"Disk" numberOfPages: @" " programmingLanguage: @" " mainIngredient: @" " minAgeReader: @" " typeDisk: @"DVD"],
[self product: @"Swift 3.0" category: @"Programming" price: @"456" barcode: @"25667678290" typeProduct: @"Book" numberOfPages: @"340" programmingLanguage: @"Swift" mainIngredient: @" " minAgeReader: @" " typeDisk: @" "],
nil];
    
}

// Метод для более удобного создания массива - описание продукта
- (NSArray*) product: (NSString*) name category: (NSString*) category price: (NSString*) price barcode: (NSString*) barcode typeProduct: (NSString*) typeProduct numberOfPages: (NSString*) numberOfPages programmingLanguage: (NSString*) programmingLanguage mainIngredient: (NSString*) mainIngredient minAgeReader: (NSString*) minAgeReader typeDisk: (NSString*) typeDisk{
    NSArray* myArray = [NSArray arrayWithObjects:name, category, price, barcode, typeProduct, numberOfPages, programmingLanguage, mainIngredient, minAgeReader, typeDisk, nil];
    return myArray;
}

// Медот для распределения товаров в зависимости от категории
- (NSArray*) productTypeName: (NSString*) category {
    NSMutableArray* productType = [NSMutableArray arrayWithCapacity:1];
    for (int i = 0; i < [productList count]; i++) {
        NSArray* product = productList[i];
        NSString* productTypeName = product[4];
        if ([productTypeName  isEqual: category]) {
            [productType addObject:product];
        }
    }
    return productType;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    if (section == 0) {
        return @"Books";
    } else {
        return @"Disks";
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Определение кол-во строк для каждой секции
    if (section == 0) {
        return [[self productTypeName:@"Book"] count];
    } else {
        return [[self productTypeName:@"Disk"] count];
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    if (indexPath.section == 0) {
        int index = [indexPath row];
        NSArray* product = [self productTypeName:@"Book"][index];
        cell.name.text = product[0];
        cell.category.text = product[1];
    }else {
        int index = [indexPath row];
        NSArray* product = [self productTypeName:@"Disk"][index];
        cell.name.text = product[0];
        cell.category.text = product[1];
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES]; // Убирает анимацию залипания при нажатии (выборе ячейки)
    ViewController* VC = [self.storyboard instantiateViewControllerWithIdentifier:@"About"]; // Инициализация VC для перехода
    
    // Выбор продукта для отображения на втором экране
    if (indexPath.section == 0) {
        VC.product = [self productTypeName:@"Book"][[indexPath row]];
    } else {
        VC.product = [self productTypeName:@"Disk"][[indexPath row]];
    }
    
    [self.navigationController pushViewController:VC animated:YES]; // Переход на другой VC
}

@end
