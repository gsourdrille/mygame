//
//  GameProfile.h
//  MyGame
//
//  Created by Guillaume SOURDRILLE on 02/02/2017.
//  Copyright © 2017 Guillaume SOURDRILLE. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameProfile : NSObject

@property (nonatomic, strong)NSMutableArray *cards;



-(void) loadFromJson:(NSMutableArray*) json;
@end
