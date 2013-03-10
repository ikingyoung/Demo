//
//  main.m
//  OOP-HR
//
//  Created by King Young on 12-5-1.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"
#import "Manager.h"

int main(int argc, const char * argv[])
{
	
	//	@autoreleasepool {
	//	    
	//	    // insert code here...
	//	    NSLog(@"Hello, World!");
	//	    
	//	}
	
	NSAutoreleasePool *pool =[[NSAutoreleasePool alloc] init];
	
	// to create some employee info
	Manager *kingYoung = [[Manager alloc] 
						  initWithFirstName:@"King" 
						  LastName:@"Young" 
						  BirthDate:[NSDate dateWithNaturalLanguageString:@"08/18/1983"] 
						  SSN:@"520-18-0092"];
	Employee *queenLee = [[Employee alloc] 
						  initWithFirstName:@"Queen" 
						  LastName:@"Lee" 
						  BirthDate:[NSDate dateWithNaturalLanguageString:@"08/08/1984"] 
						  SSN:@"523-21-2345"];
	Employee *joeBlow = [[Employee alloc] 
						 initWithFirstName:@"Joe" 
						 LastName:@"Blow" 
						 BirthDate:[NSDate dateWithNaturalLanguageString:@"12/01/1999"] 
						 SSN:@"555-12-1212"];
	Employee *janeDoe = [[Employee alloc] 
						 initWithFirstName:@"Jane" 
						 LastName:@"Doe" 
						 BirthDate:[NSDate dateWithNaturalLanguageString:@"08/13/1985"] 
						 SSN:@"553-25-1317"];
	
	[kingYoung addReport: joeBlow];
	[kingYoung addReport: queenLee];
	[kingYoung addReport: janeDoe];
	
	queenLee.Salary = 75000;
	joeBlow.Salary = 50000;
	janeDoe.Salary = 55000;
	kingYoung.Salary = 100000;
	
	NSMutableArray *allEmployees = [NSMutableArray array];
	[allEmployees addObject:kingYoung];
	[allEmployees addObject:queenLee];
	[allEmployees addObject:joeBlow];
	[allEmployees addObject:janeDoe];
	
	for(Employee *item in allEmployees)
	{
		[item giveRaise:1.0];
		NSLog(@"\n  Employee : %@ %@\n -  Salary : %2.f\n -   Bouns : %f",
			  item.FirstName,
			  item.LastName,
			  item.Salary,
			  item.Bouns);
		
	}
	
	[kingYoung release];
	[queenLee release];
	[janeDoe release];
	[joeBlow release];
	[pool drain];
    return 0;
}

