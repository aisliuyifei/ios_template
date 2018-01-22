//
//  GlobalValues.h
//  template
//
//  Created by wupeng on 02/10/2017.
//  Copyright © 2017 wupeng. All rights reserved.
//

#ifndef GlobalValues_h
#define GlobalValues_h
#define ADMOBKEY @"ca-app-pub-2740601045251228/8402937593"
#define ADMOB_OPEN NO
#define isPad (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
#define SCLocal(x, ...) NSLocalizedString(x, nil)
#define SCUserDefaults [NSUserDefaults standardUserDefaults]
#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)
#define SCFontSize(s) ([UIFont systemFontOfSize:s])

#define SCBoldFontSize(s) ([UIFont boldSystemFontOfSize:s])

//获取沙盒Document路径
#define kDocumentPath [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject]
//获取沙盒temp路径
#define kTempPath NSTemporaryDirectory()
//获取沙盒Cache路径
#define kCachePath [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) firstObject]

//颜色
#define kRGBColor(r, g, b)     [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]
#define kRGBAColor(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(r)/255.0 blue:(r)/255.0 alpha:a]

#define FONT_SIZE_HUGE (isPad ? 70 : (SCREEN_HEIGHT > 320 ? 38 : 30))
#define FONT_SIZE_LARGE (isPad ? 60 : (SCREEN_HEIGHT > 320 ? 30 : 24))
#define FONT_SIZE_MEDIUM (isPad ? 40 : (SCREEN_HEIGHT > 320 ? 20 : 16))
#define FONT_SIZE_SMALL (isPad ? 30 : ((SCREEN_HEIGHT > 320 ? 15 : 12)))
#define THEME_COLOR (kRGBColor(4,150,240))



#endif /* GlobalValues_h */
