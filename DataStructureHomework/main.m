//
//  main.m
//  DataStructureHomework
//
//  Created by Astrian Zheng on 14-6-6.
//  Copyright (c) 2014年 Astrian Zheng. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <stdio.h>
#import "Config.h"

int main(int argc, const char * argv[])
{
    LineFun line = NewLineFun();
	LineFrameWork a;
	line.Create(&a,10);
	line.Incert(&a,'a',1);
	line.Incert(&a,'b',1);
	line.Incert(&a,'z',2);
	printf("经过三次插入操作，现在的字符串为：");
	line.Show(&a);
	line.Delete(&a,1);
	printf("经过删除操作，现在的字符串为：");
	line.Show(&a);
}
