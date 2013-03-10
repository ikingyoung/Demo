//
//  Manager.m
//  OOP-HR
//
//  Created by King Young on 12-5-1.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "Manager.h"

@implementation Manager
@synthesize Reports;

-(void) dealloc
{
	for(Employee *item in self.Reports)
	{
		[item setManager:nil];
	}
	
	[self setReports:nil];
	[super dealloc];
}

-(id) init
{
	if(self = [super init])
	{
		[self setReports:[NSMutableArray array]];
	}
	return self;
}

-(void) addReport:(Employee *)inEmployee
{
	[self.Reports addObject:inEmployee];
	[inEmployee setManager:self];
}

-(double) Bouns  // 重写了父类的方法
{
	return self.Salary * 0.5;
//	return _Salary * 0.1;
}
@end
