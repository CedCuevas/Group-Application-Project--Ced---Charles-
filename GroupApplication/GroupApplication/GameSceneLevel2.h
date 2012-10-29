//
//  Medium.h
//  GroupApplication
//
//  Created by Charles Marlon G. Ramones on 10/25/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <GameKit/GameKit.h>
#import "cocos2d.h"

typedef enum {
    kEndReasonWin2,
    kEndReasonLose2
    
}EndReason2;


@interface GameSceneLevel2 : CCLayerColor <GKAchievementViewControllerDelegate, GKLeaderboardViewControllerDelegate>
{
    CCArray *spinach;
    CCArray *milk;
    CCArray *ufo;
    CCArray *clouds1;
    
    CCLabelTTF *pause;
    CCSprite *movingSpring;
    bool *pauseScreenUp;
    CCLayer *pauseLayer;
    CCSprite *pauseScreen;
    CCMenu *pauseScreenMenu;
    CCLabelTTF *level;
    int points;
    int timeInt;
    int secs;
    CCLabelTTF *timeLabel;
    NSString *TotalTimeString;
    CCLabelTTF *lifeLabel;
    NSString *cowLifeString;
    int kills;
    CCLabelTTF *killsLabel;
    
    CCMenuItemImage *resumeGameplay;
    CCMenuItemImage *quitGameplay;
    
    int nextclouds1;
    double nextcloudsspawn1;
    int nextufo;
    double nextufospawn;
    
    
    int score;
    
    
    int nextSpinach;
    int nextMilk;
    
    int lives;
    int counterForLifeHeart;
    int counterForSpinachRegenLife;
    
    double nextSpinachSpawn;
    double gameOverTime;
    
    bool gameOver;
    
    float cowPointPerSecY;
    
    int powUpShield;
    
    CCSpriteBatchNode *batchNode;
    CCSprite *cow;
    
    CCParallaxNode *backgroundNode;
    
    CCMenuItem *pauseMenuItem;
    CCLabelTTF *pointsDisplay;
    
    CCSprite *lifeHeart1;
    CCSprite *lifeHeart2;
    CCSprite *lifeHeart3;
    
    
    
    
    // returns a CCScene that contains the HelloWorldLayer as the only child
}
+(CCScene *) scene;
@property (nonatomic, assign)int timeInt;
@property (nonatomic, assign)int secs;
@property (nonatomic, assign)int mins;
@property (nonatomic, retain)NSString *TotalTimeString;
@property (nonatomic, retain)NSString *cowlife;
@property (nonatomic, retain)CCMenuItem *pauseMenuItem;
@property (nonatomic, retain)NSString *levelString;
@property (nonatomic, retain)NSString *killsString;

@end
