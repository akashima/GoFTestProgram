//
//  Human.h
//  GoFTestProgram
//
//  Created by akashima on 2013/09/30.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Human : NSObject
{
	@private
	NSMutableString *_name;
	int _height;
	int _weight;
	int _age;
}

- (void)setHumanStateWithName:(NSString *)name withHeight:(int)height withWeight:(int)weight withAge:(int)age;

- (int)age;
- (int)height;

@end
