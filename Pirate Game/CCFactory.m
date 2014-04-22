//
//  CCFactory.m
//  Pirate Game
//
//  Created by Andrew Wu on 4/17/14.
//  Copyright (c) 2014 Both Points. All rights reserved.
//

#import "CCFactory.h"
#import "CCTile.h"

@implementation CCFactory

-(NSArray *)tiles
{
    CCTile *tile1 = [[CCTile alloc] init];
    tile1.story = @"Yo, we need someone to go on a fantastic voyage. Do you want a knife?";
    tile1.backgroundImage = [UIImage imageNamed:@"PirateStart.jpg"];
    CCWeapon *bluntedSword = [[CCWeapon alloc] init];
    bluntedSword.name = @"Blunted Sword";
    bluntedSword.damageNumber= 10;
    tile1.weapon= bluntedSword;
    tile1.actionButtonName = @"Take the Sword";
    

    CCTile *tile2 = [[CCTile alloc] init];
    tile2.story = @"Its the blacksmith, want some armor?";
    tile2.backgroundImage = [UIImage imageNamed:@"PirateBlacksmith.jpeg"];
    CCArmor *basicArmor = [[CCArmor alloc] init];
    basicArmor.name = @"Basic Armor";
    basicArmor.health = 10;
    tile2.armor = basicArmor;
    tile2.actionButtonName = @"Take the Armor";

    CCTile *tile3 = [[CCTile alloc] init];
    tile3.story = @"You found the dock, got some goods!";
    tile3.backgroundImage = [UIImage imageNamed:@"PirateFriendlyDock.jpg"];
    tile3.healthEffect = 12;
    tile3.actionButtonName = @"Loot";
    
    NSMutableArray *firstColumn = [[NSMutableArray alloc] init];
    [firstColumn addObject:tile1];
    [firstColumn addObject:tile2];
    [firstColumn addObject:tile3];

    CCTile *tile4 = [[CCTile alloc] init];
    tile4.story = @"Its the parrot tile?";
    tile4.backgroundImage = [UIImage imageNamed:@"PirateParrot.jpg"];
    CCArmor *parrot = [[CCArmor alloc] init];
    parrot.name = @"Parrot Armor";
    parrot.health= 15;
    tile4.armor = parrot;
    tile4.actionButtonName = @"Take the Parrot";
    
    CCTile *tile5 = [[CCTile alloc] init];
    tile5.story = @"Pirate weapons?";
    tile5.backgroundImage = [UIImage imageNamed:@"PirateWeapons.jpeg"];
    CCWeapon *pistols = [[CCWeapon alloc] init];
    pistols.name = @"Pistols";
    pistols.damageNumber = 19;
    tile5.weapon = pistols;
    tile5.actionButtonName = @"Take the Pistol";

    
    CCTile *tile6 = [[CCTile alloc] init];
    tile6.story = @"Walk the plank!";
    tile6.backgroundImage = [UIImage imageNamed:@"PiratePlank.jpg"];
    tile6.healthEffect = -15;
    tile6.actionButtonName = @"Walk it";
    
    NSMutableArray *secondColumn = [[NSMutableArray alloc] init];
    [secondColumn addObject:tile4];
    [secondColumn addObject:tile5];
    [secondColumn addObject:tile6];


    CCTile *tile7 = [[CCTile alloc] init];
    tile7.story = @"You see a pirate ship battle!";
    tile7.backgroundImage = [UIImage imageNamed:@"PirateShipBattle.jpeg"];
    tile7.healthEffect = 12;
    tile7.actionButtonName = @"Join the Fight";

    CCTile *tile8 = [[CCTile alloc] init];
    tile8.story = @"Its an octopus!?";
    tile8.backgroundImage = [UIImage imageNamed:@"PirateOctopusAttack.jpg"];
    tile8.healthEffect = -20;
    tile8.actionButtonName = @"Fight it!";

    CCTile *tile9 = [[CCTile alloc] init];
    tile9.story = @"A cave of treasure!?";
    tile9.backgroundImage = [UIImage imageNamed:@"PirateTreasure.jpeg"];
    tile9.healthEffect = 15;
    tile9.actionButtonName = @"Try to loot";
    
    NSMutableArray *thirdColumn = [[NSMutableArray alloc] init];
    [thirdColumn addObject:tile7];
    [thirdColumn addObject:tile8];
    [thirdColumn addObject:tile9];

    CCTile *tile10 = [[CCTile alloc] init];
    tile10.story = @"You got attacked!";
    tile10.backgroundImage = [UIImage imageNamed:@"PirateAttack.jpg"];
    tile10.healthEffect = -15;
    tile10.actionButtonName = @"Fight with the";

    CCTile *tile11 = [[CCTile alloc] init];
    tile11.story = @"Money Money!";
    tile11.backgroundImage = [UIImage imageNamed:@"PirateTreasurer2.jpeg"];
    tile11.healthEffect = -7;
    tile11.actionButtonName = @"Try to loot";

    CCTile *tile12 = [[CCTile alloc] init];
    tile12.story = @"BOSS FIGHT!";
    tile12.backgroundImage = [UIImage imageNamed:@"PirateBoss.jpeg"];
    tile12.healthEffect = -15;
    tile12.actionButtonName = @"Fight";
    
    NSMutableArray *fourthColumn = [[NSMutableArray alloc] init];
    [fourthColumn addObject:tile10];
    [fourthColumn addObject:tile11];
    [fourthColumn addObject:tile12];

    NSArray *tiles = [[NSArray alloc] initWithObjects:firstColumn, secondColumn, thirdColumn, fourthColumn, nil];
    
    return tiles;
}

-(CCCharacter *)character
{
    CCCharacter *character = [[CCCharacter alloc] init];
    character.health = 100;
    
    CCArmor *armor = [[CCArmor alloc] init];
    armor.name = @"Dirty Rags";
    armor.health = 5;
    character.armor = armor;
    
    CCWeapon *weapon = [[CCWeapon alloc] init];
    weapon.name = @"Fists";
    weapon.damageNumber = 10;
    character.weapon = weapon;
    
    return character;
}

-(CCBoss *)boss
{
    CCBoss *boss = [[CCBoss alloc] init];
    boss.health = 40;
    return boss;
    
}
@end
