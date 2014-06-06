//
//  Config.m
//  DataStructureHomework
//
//  Created by Astrian Zheng on 14-6-6.
//  Copyright (c) 2014年 Astrian Zheng. All rights reserved.
//

#import "Config.h"

@implementation Config

@end
#include "Config.h"
#include "stdlib.h"
#include "stdio.h"
#define FrameWorkSize 1//数据类型的大小

static void Create(LineFrameWork* q ,int max){
	q->h=malloc(max*FrameWorkSize);
	q->max=max;
	q->length=0;
}
static void Destroy(LineFrameWork* q){
	free(q);
}
static int Length(LineFrameWork* q){
	return q->length;
}
static void Show(LineFrameWork* q){
	int i=0;
	while(i!=(q->length)){
		printf("%c",*(q->h+i*FrameWorkSize));//不同数据类型写法不同
		i++;
	}
	printf("\n");
}
static char GetElem(LineFrameWork* q ,int i){//返回值也和数据类型有关
	return *(q->h+(i-1)*FrameWorkSize);
}
static int  Search (LineFrameWork* q ,char x){
	int i=0;
	while(i!=(q->length)-1){
		if(*(q->h+i*FrameWorkSize)==x){
			return i+1;
		}
		i++;
	}
	return 0;
}
static void Incert (LineFrameWork* q ,char x ,int i){
	// 如果数据表已满，则退出函数
	if(q->max==q->length){
		printf("数据已满\n");
		return;
	}
	(q->length)++;
	int r=q->length-1;
	while((r+1)!=i){
		*(q->h+r*FrameWorkSize)=*(q->h+(r-1)*FrameWorkSize);
		r--;
	}
    
	*(q->h+(i-1)*FrameWorkSize)=x;
	
}
static void Delete (LineFrameWork* q ,int  i){
	// 如果数据表为空，则退出函数
	if(q->length==0){
		printf("没数据叫人家怎么删呀╮(╯_╰)╭\n");
		return;
	}
	int r;
	r = i;
	while(r!=q->length){
		*(q->h+(r-1)*FrameWorkSize)=*(q->h+r*FrameWorkSize);
		r++;
	}
	(q->length)--;
}
LineFun NewLineFun(){
	LineFun R;
	R.Create=Create;
    R.Destroy=Destroy;
    R.Length=Length;
    R.Show=Show;
    R.GetElem=GetElem;
    R.Search=Search;
    R.Incert=Incert;
    R.Delete=Delete;
	return R;
}
