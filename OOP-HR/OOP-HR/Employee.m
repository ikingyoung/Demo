//
//  Employee.m
//  OOP-HR
//
//  Created by King Young on 12-5-1.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "Employee.h"

@implementation Employee
@synthesize FirstName;
@synthesize LastName;
@synthesize BirthDate;
@synthesize DateOfEmployment;
@synthesize Manager;
@synthesize SSN;
@synthesize Salary;
@dynamic Age; // 注意：此处属性的实现时动态的，指的是不需要存储的变量，其值由计算得来

-(void) dealloc
{
	[self setFirstName:nil];
	[self setLastName:nil];
	[self setBirthDate:nil];
	[self setDateOfEmployment:nil];
	[self setManager:nil];
	[self setSSN:nil];
	
	[super dealloc];
}

-(id) init
{
	if (self = [super init])
	{
		
	}
	return self;
}

-(id) initWithFirstName:(NSString *)inFirstName 
			   LastName:(NSString *)inLastName 
			  BirthDate:(NSDate *)inBirthDate 
					SSN:(NSString *)inSSN
{
	if (self = [self init])
	{
		[self setFirstName:inFirstName];
		[self setLastName:inLastName];
		[self setBirthDate:inBirthDate];
		[self setSSN:inSSN];
	}
	return self;
}

-(NSTimeInterval) Age
{
	return [BirthDate timeIntervalSinceNow];
}

-(void) giveRaise:(double)inPercentage
{
	self.Salary = self.Salary + (self.Salary * inPercentage);
}

-(double) Bouns
{
	return self.Salary * 0.5;
}

@end
