//
//  ColorPallet.h
//  GoFTestProgram
//
//  Created by akashima on 2013/08/18.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ColorPallet : NSObject
{
	@private
	float _red;
	float _green;
	float _blue;
}

- (void)setRed:(float)red;
- (void)setGreen:(float)green;
- (void)setBlue:(float)blue;

- (float)red;
- (float)green;
- (float)blue;


@end
