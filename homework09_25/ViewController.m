//
//  ViewController.m
//  homework09_25
//
//  Created by Egor on 13.10.2019.
//  Copyright © 2019 Egor. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSMutableArray *array = [NSMutableArray array];
    
    [array addObject:[NSNumber numberWithInteger:24]];
    [array addObject:[NSNumber numberWithInteger:6]];
    [array addObject:[NSNumber numberWithInteger:32]];
    [array addObject:[NSNumber numberWithInteger:3]];
    [array addObject:[NSNumber numberWithInteger:81]];
    
    //1.1
    NSArray *sortedArray = [array sortedArrayUsingSelector: @selector(compare:)];
    NSLog(@"sorted array:");
    for (NSNumber *i in sortedArray) {
        NSLog(@"%@", i);
    }
    //1.2
    
    NSMutableArray *onlyNumbersMoreThanTwenty = [NSMutableArray array];
    NSLog(@"These numbers are more than 20:");
    for (NSNumber *i in array) {
        if ([i integerValue]>20) {
            [onlyNumbersMoreThanTwenty addObject: i];
            NSLog(@"%@",i);
        }
    }
    //1.3
    NSMutableArray *onlyMultiplesOfThree = [NSMutableArray array];
    NSLog(@"These numbers are multiples of three");
    for (NSNumber *i in array) {
        if ([i integerValue]%3==0) {
            [onlyMultiplesOfThree addObject: i];
            NSLog(@"%@",i);
        }
    }
    //1.4
    [onlyNumbersMoreThanTwenty addObjectsFromArray:onlyMultiplesOfThree];
    [array addObjectsFromArray:onlyNumbersMoreThanTwenty];
    //1.5
    NSSortDescriptor* sortOrder = [NSSortDescriptor sortDescriptorWithKey: @"self" ascending: NO];
    NSArray *secondSortedArray = [array sortedArrayUsingDescriptors: [NSArray arrayWithObject: sortOrder]];
    NSLog(@"Second sorted array:");
    for (NSNumber *i in secondSortedArray) {
        NSLog(@"%@",i);
    }
    //2
    NSArray *arr = @[@"cataclism",@"catepillar",@"cat",@"teapot",@"truncate"];
    NSString *str = @"cat";
    
    NSPredicate* predicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH %@", str];
    NSArray* filteredData = [arr filteredArrayUsingPredicate:predicate];
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    for (NSString *s in filteredData) {
        [dict setObject: @(s.length) forKey:s];
        NSLog(@"%@",s);
    }
    




}


@end
