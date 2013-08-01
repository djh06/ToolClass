//
//  NSString+NSStringTools.h
//  ToolClass
//
//  Created by umios on 13-7-31.
//  Copyright (c) 2013年 umios. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (NSStringTools)

- (NSString*)substringFrom:(NSInteger)a to:(NSInteger)b;

- (NSInteger)indexOf:(NSString*)substring from:(NSInteger)starts;

- (NSString*)trim;

- (BOOL)startsWith:(NSString*)s;

- (BOOL)containsString:(NSString*)aString;

- (NSString*)urlEncode;

- (NSString*)sha1;

@end
