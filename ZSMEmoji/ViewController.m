//
//  ViewController.m
//  ZSMEmoji
//
//  Created by acadsoc on 2018/5/25.
//  Copyright © 2018年 Simon. All rights reserved.
//

#import "ViewController.h"
#import "NSString+ZSMEmoji.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //字符串中是否包含emoji字符串
    NSString *test1 = @"word🇩🇿😜word";
    if ([test1 zsm_containsEmoji]) {
        NSLog(@"%@包含emoji",test1);
    }
    
    //是否为纯emoji字符串
    NSString *test2 = @"🇩🇿😜🇩🇿😜";
    if ([test2 zsm_isPureEmojiString]) {
        NSLog(@"%@只包含emoji",test2);
    }
    
    //emoji在字符串中所在位置的range数组
    NSString *test3 = @"a😜ab😜adc😜adcd😜abcde😜";
    NSArray *emojiArr = [test3 zsm_emojiRanges];
    if (emojiArr.count > 0) {
        NSLog(@"%@",emojiArr);
    }
    
    //字符串中包含emoji的个数
    NSString *test4 = @"a🇩🇿😜ab😜adc🇩🇿😜adcd😜🇩🇿abcde😜";
    NSInteger count = [test4 zsm_emojiCount];
    NSLog(@"%@包含%ld个emoji",test4,count);
    
    //删除字符串中的emoji
    NSString *test5 = @"a🇩🇿😜ab😜adc🇩🇿😜adcd😜🇩🇿汉字abc😜de😜abcd😜ef😜😜😜😜😜pljdsfsd中文😜666😜66😜";
    NSString *newTest5 = [test5 zsm_CleanEmoji];
    NSLog(@"\n未删前：%@\n删除后：%@",test5,newTest5);
    
    //提取字符串中的emoji
    NSString *test6 = @"a🇩🇿😜ab";
    NSString *emoji = [test6 zsm_extractEmoji];
    NSLog(@"%@",emoji);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
