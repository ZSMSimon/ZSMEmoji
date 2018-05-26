//
//  NSString+ZSMEmoji.h
//  ZSMEmoji
//
//  Created by acadsoc on 2018/5/25.
//  Copyright © 2018年 Simon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (ZSMEmoji)

/**
 字符串中是否包含emoji字符串

 @return YES为包含emoji
 */
- (BOOL)zsm_containsEmoji;

/**
 是否为纯emoji字符串

 @return YES为纯emoji字符串
 */
- (BOOL)zsm_isPureEmojiString;

/**
 emoji在字符串中所在位置的range数组

 @return range数组
 */
- (NSArray *)zsm_emojiRanges;

/**
 字符串中包含emoji的个数

 @return emoji个数
 */
- (NSInteger)zsm_emojiCount;

/**
 删除字符串中的emoji

 @return 无emoji的字符串
 */
- (NSString *)zsm_CleanEmoji;

/**
 提取字符串中的emoji

 @return 字符串中的emoji
 */
- (NSString *)zsm_extractEmoji;

@end
