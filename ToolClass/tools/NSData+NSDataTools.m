//
//  NSData+NSDataTools.m
//  ToolClass
//
//  Created by umios on 13-8-1.
//  Copyright (c) 2013年 umios. All rights reserved.
//

#import "NSData+NSDataTools.h"

@implementation NSData (NSDataTools)

- (NSString*)hexString {
	NSMutableString *str = [NSMutableString stringWithCapacity:64];
	int length = [self length];
	char *bytes = malloc(sizeof(char) * length);
	
	[self getBytes:bytes length:length];
	
	int i = 0;
	
	for (; i < length; i++) {
		[str appendFormat:@"%02.2hhx", bytes[i]];
	}
	free(bytes);
	
	return str;
}

@end
