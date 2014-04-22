//
//  CCFactory.h
//  Pirate Game
//
//  Created by Andrew Wu on 4/17/14.
//  Copyright (c) 2014 Both Points. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CCCharacter.h"
#import "CCBoss.h"

@interface CCFactory : NSObject

-(NSArray *)tiles;

-(CCCharacter *)character;

-(CCBoss *) boss;

@end
