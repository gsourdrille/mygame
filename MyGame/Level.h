//
//  Level.h
//  MyGame
//
//  Created by Guillaume SOURDRILLE on 02/02/2017.
//  Copyright © 2017 Guillaume SOURDRILLE. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Level : NSObject


@property (nonatomic)NSNumber *idLevel;
@property (nonatomic, strong)NSString *title;
@property (nonatomic, strong)NSString *text;
@property (nonatomic)NSNumber *duration;

-(void) loadFromJson:(NSMutableDictionary*) json;


@end
