//
//  Dishware.h
//  GoFTestProgram
//
//  Created by akashima on 2013/09/29.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Material.h"

@interface Dishware : NSObject
{
	@private
	Material *_material;
}

- (void)setMaterial:(Material *)material;
- (Material *)material;

@end
