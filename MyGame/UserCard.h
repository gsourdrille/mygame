//
//  UserCard.h
//  MyGame
//
//  Created by Guillaume SOURDRILLE on 03/02/2017.
//  Copyright © 2017 Guillaume SOURDRILLE. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserCard : NSObject<NSCoding>

@property (nonatomic, strong)NSString *idCard;
@property (nonatomic) NSNumber *currentLevel;
@property (nonatomic) NSNumber *nbCards;



@end
