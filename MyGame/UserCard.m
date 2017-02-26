//
//  UserCard.m
//  MyGame
//
//  Created by Guillaume SOURDRILLE on 03/02/2017.
//  Copyright © 2017 Guillaume SOURDRILLE. All rights reserved.
//

#import "UserCard.h"

@implementation UserCard
@synthesize idCard,currentLevel,nbCards;

- (void)encodeWithCoder:(NSCoder *)coder
{
    
    [coder encodeObject:idCard forKey:@"id"];
    [coder encodeObject:currentLevel forKey:@"currentLevel"];
    [coder encodeObject:nbCards forKey:@"nbCards"];
    
}


- (id)initWithCoder:(NSCoder *)coder
{

    if ((self = [super init]) != nil) {
        idCard = [coder decodeObjectForKey:@"id"];
        currentLevel = [coder decodeObjectForKey:@"currentLevel"];
        nbCards = [coder decodeObjectForKey:@"nbCards"];
    }
    return self;
}

@end
