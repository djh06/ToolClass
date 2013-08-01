    //
//  NSString+NSStringTools.m
//  ToolClass
//
//  Created by umios on 13-7-31.
//  Copyright (c) 2013年 umios. All rights reserved.
//

#import "NSString+NSStringTools.h"
#import <CommonCrypto/CommonHMAC.h>

@implementation NSString (NSStringTools)


- (NSString*)substringFrom:(NSInteger)a to:(NSInteger)b{

    NSRange range;
    
    range.length = b - a;
    range.location = a;
    
    return [self substringWithRange:range];
}

- (NSInteger)indexOf:(NSString*)substring from:(NSInteger)starts{
    
    NSRange range;
    range.length = self.length - starts;
    range.location = starts;
    
    NSRange index = [self rangeOfString:substring options:NSLiteralSearch range:range];
    
    if (index.location == NSNotFound) {
        return -1;
    }
    
    //    if (index.length == 0) {
    //        return -1;
    //    }
    
    return index.location;
}

- (NSString*)trim{
    return [self stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

- (BOOL)startsWith:(NSString*)s{
    
    
    if (s.length > self.length) {
        return NO;
    }
    
    return [s isEqualToString:[self substringToIndex:s.length]];
//    return [self indexOf:s from:0] == 0;
}

- (BOOL)containsString:(NSString*)aString{

    NSRange range = [[self lowercaseString] rangeOfString:aString];
    return range.location != NSNotFound;
}


- (NSString *)urlEncode
{
	NSString* encodedString = (NSString *)CFURLCreateStringByAddingPercentEscapes(
                                                                                  NULL,
                                                                                  (CFStringRef) self,
                                                                                  NULL,
                                                                                  (CFStringRef)@"!*'();:@&=+$,/?%#[]",
                                                                                  kCFStringEncodingUTF8 );
	return [encodedString autorelease];
}

- (NSString *)sha1 {
	NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
	uint8_t digest[CC_SHA1_DIGEST_LENGTH] = {0};
	CC_SHA1(data.bytes, data.length, digest);
	NSData *d = [NSData dataWithBytes:digest length:CC_SHA1_DIGEST_LENGTH];
	return [d hexString];
}

@end
