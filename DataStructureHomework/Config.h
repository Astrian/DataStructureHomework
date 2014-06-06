//
//  Config.h
//  DataStructureHomework
//
//  Created by Astrian Zheng on 14-6-6.
//  Copyright (c) 2014年 Astrian Zheng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Config : NSObject

@end

#ifndef Config_h
#define Config_h
typedef struct LineFrameWork{
    char *h;
    int length;
    int max;
}LineFrameWork;
typedef struct LineFun{
    void (*Create) (LineFrameWork* q ,int max);
    void (*Destroy)(LineFrameWork* q);
    int  (*Length) (LineFrameWork* q);
    void (*Show)   (LineFrameWork* q);
    char (*GetElem)(LineFrameWork* q ,int  i);
    int  (*Search) (LineFrameWork* q ,char x);
    void (*Incert) (LineFrameWork* q ,char x ,int i);
    void (*Delete) (LineFrameWork* q ,int  i);
}LineFun;
#endif
extern LineFun NewLineFun();