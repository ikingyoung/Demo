
//
//  main.m
//  ExpressionCalculator
//
//  Created by King Young on 12-4-30.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MathOperations.h"

BOOL isAnOperator(const char value){
	return ((value=='+')||(value=='-')||(value=='*')||(value=='/'));
}
int main(int argc, const char * argv[])
{
	
	@autoreleasepool 
	{
		double result=0;
		char operator='\0';
		
		//		char expr[100]; 
		//		NSString *equation = nil;
		
		
		//		NSLog(@"\n Please input your expression.\n");
		//		scanf("%s",expr);// 当用char指针接收从终端传入的字符参数时，必须为指针分配内存空间
		//		printf("\n%s\n",expr);
		//		equation = [NSString stringWithCString: expr encoding:NSASCIIStringEncoding];
		
		//		NSLog(@"\n Expression : %@",equation);
		//		NSString *equation =[NSString stringWithUTF8String:argv[1]];
		NSString *equation =[NSString stringWithUTF8String:"10 + 5 * 4"];
		// 以空格为分隔符，将输入的表达式分割成数字串和运算符的数组
		NSArray *eqParts = [equation 
							componentsSeparatedByCharactersInSet:
							[NSCharacterSet whitespaceCharacterSet]];
		
		for (NSString *item in eqParts)
		{
			NSLog(@"\n [Expression] : %@",item);
		}
		
		for (int n=0; n<[eqParts count]; n++) 
		{
			NSString *argString = [eqParts objectAtIndex:n];
			char firstChar = [argString characterAtIndex:0];
			//			NSLog(@"\n [Expression] : %@",equation);
			if(isAnOperator(firstChar))
			{// 如果第一个字符为运算符，则处理下一个字符串
				operator = firstChar;
				continue;
			}
			
			double newValue = [argString doubleValue];
			switch (operator)
			{
				case '+':
					result=add(result,newValue);
					break;
				case '-':
					result=subtract(result,newValue);
					break;
				case '*':
					result=multiply(result,newValue);
					break;
				case '/':
					result=divide(result,newValue);
					break;
					
				default:
					result=add(result,newValue);					
					break;
			}
		}
		
		NSLog(@"%@ is : %.3f",equation,result);
	}
	return 0;
}
