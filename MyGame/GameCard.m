//
//  Card.m
//  MyGame
//
//  Created by Guillaume SOURDRILLE on 02/02/2017.
//  Copyright © 2017 Guillaume SOURDRILLE. All rights reserved.
//

#import "GameCard.h"
#import "Level.h"

@implementation GameCard
@synthesize idCard,picture,type,levels;


-(void) loadFromJson:(NSMutableDictionary*) json{
    if(json != nil){
        idCard = [json objectForKey:@"id"];
        picture = [json objectForKey:@"picture"];
        type = [json objectForKey:@"type"];
        if([json objectForKey:@"levels"] != nil){
            if(levels == nil){
                levels = [[NSMutableArray alloc] init];
            }
            for(NSMutableDictionary *levelJson in [json objectForKey:@"levels"]){
                Level *level = [[Level alloc] init];
                [level loadFromJson:levelJson];
                [levels addObject:level];
            }
        }

    }
}
@end
