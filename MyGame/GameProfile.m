//
//  GameProfile.m
//  MyGame
//
//  Created by Guillaume SOURDRILLE on 02/02/2017.
//  Copyright © 2017 Guillaume SOURDRILLE. All rights reserved.
//

#import "GameProfile.h"
#import "GameCard.h"

@implementation GameProfile
@synthesize cards;


-(void) loadFromJson:(NSMutableArray*) data{
    
    if(cards == nil){
        cards = [[NSMutableArray alloc]init];
    }
    
    for(NSMutableDictionary* cardJson in data){
        GameCard *card = [[GameCard alloc] init];
        [card loadFromJson:cardJson];
        [cards addObject:card];
    }
    
}

@end
