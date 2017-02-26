//
//  Level.m
//  MyGame
//
//  Created by Guillaume SOURDRILLE on 02/02/2017.
//  Copyright © 2017 Guillaume SOURDRILLE. All rights reserved.
//

#import "Level.h"

@implementation Level
@synthesize idLevel,title,text,duration;


-(void) loadFromJson:(NSMutableDictionary*) json{
    if(json != nil){
        idLevel = [json objectForKey:@"id"];
        title = [json objectForKey:@"title"];
        text = [json objectForKey:@"text"];
        duration = [json objectForKey:@"duration"];
    }
}

@end
