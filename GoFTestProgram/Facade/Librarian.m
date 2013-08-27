//
//  Librarian.m
//  GoFTestProgram
//
//  Created by 鹿島　章 on 13/08/26.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "Librarian.h"
#import "DataList.h"
#import "CheckList.h"

@implementation Librarian

- (NSString *)searchData:(NSString *)dataName
{
	NSMutableString *resultString = [NSMutableString string];
	DataList *dataList = [[DataList alloc] init];
	
	[resultString setString:[dataList searchData:dataName]];
	if ([resultString length])
	{
		CheckList *checkList = [[CheckList alloc] init];

		if ([checkList checkList:dataName])
		{
			// HITした場合、何もしないorHITした場合に応じて処理を行う
		}else
		{
			[resultString setString:@"CheckListにデータなし"];
			
		}
	} else
	{
		[resultString setString:@"データ件数0件"];
		return resultString;
	}
	
	return resultString;
}

@end
