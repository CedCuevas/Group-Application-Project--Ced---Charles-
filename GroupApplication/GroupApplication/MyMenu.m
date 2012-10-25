//
//  HelloWorldLayer.m
//  GroupApplication
//
//  Created by Henricson Cedrick Z. Cuevas on 10/17/12.
//  Copyright __MyCompanyName__ 2012. All rights reserved.
//


#import "MyMenu.h"
#import "cocos2d.h"
#import "HelloWorldLayer.h"
#import "HowGameLayer.h"
#import "GameSceneLevel2.h"
#import "ScoreScene.h"
@implementation MyMenu


+(id)scene
{
    CCScene *scene = [CCScene node];
    
    MyMenu *layer = [MyMenu node];
    
    [scene addChild:layer];
    
    
    
    return scene;
    
}



-(id)init
{
    if((self = [super initWithColor:ccc4(0, 0, 0, 0)]))
    {
        
        CCLabelTTF *title = [CCLabelTTF labelWithString:@"Cow And Aliens" fontName:@"Marker Felt" fontSize:40];
        title.position = ccp(170, 400);
        [self addChild:title];
        
        
        CCLayer *menuLayer = [[CCLayer alloc]init];
        [self addChild:menuLayer];
        
        
       
        [CCMenuItemFont setFontName:@"Courier"];
        
        
        /*CCMenuItemImage *startButton = [CCMenuItemImage itemWithNormalImage:@"1.png" selectedImage:nil target:self selector:@selector(startButton:)];
        
        startButton.position = ccp(0, 0);
        
        CCMenuItemImage *MediumButton = [CCMenuItemImage itemWithNormalImage:@"1.png" selectedImage:nil target:self selector:@selector(MediumButton:)];
        
        startButton.position = ccp(0, -50);
        
        CCMenuItemImage *About = [CCMenuItemImage itemWithNormalImage:@"1.png" selectedImage:nil target:self selector:@selector(About:)];
        
        About.position = ccp(0, -100);*/
        
        CCMenuItemFont *startGameButton = [CCMenuItemFont itemWithString:@"Start Game" target:self selector:@selector(startButton)];
        startGameButton.position = ccp(0, 0);
        
        CCMenuItemFont *scoreButton = [CCMenuItemFont itemWithString:@"Score" target:self selector:@selector(ScoreButton)];
        scoreButton.position = ccp(0, -50);
        
        CCMenuItemFont *aboutGameButton = [CCMenuItemFont itemWithString:@"About" target:self selector:@selector(About)];
        aboutGameButton.position = ccp(0, -100);
        //[menuLayer addChild:scoreButton];
        
        CCMenu *menu = [CCMenu menuWithItems:startGameButton, scoreButton, aboutGameButton,  nil];
        [menuLayer addChild: menu];
        
        
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
		
		// Register default high scores - this could be more easily done by loading a .plist instead of manually creating this nested object
		NSDictionary *defaultDefaults = [NSDictionary dictionaryWithObject:[NSArray arrayWithObjects:[NSNumber numberWithInt:0],
																			[NSNumber numberWithInt:0],
																			[NSNumber numberWithInt:0],
																			[NSNumber numberWithInt:0],
																			[NSNumber numberWithInt:0],
																			nil]
																	forKey:@"scores"];
		[defaults registerDefaults:defaultDefaults];
		[defaults synchronize];

        
       
        
    }
    return self;
}



-(void) startButton
{
    
    [[CCDirector sharedDirector]replaceScene:[HelloWorldLayer scene]];
    
}

-(void) ScoreButton
{
    
    [[CCDirector sharedDirector]replaceScene:[ScoreLayer scene]];
    
}

-(void)About
{
    
    [[CCDirector sharedDirector]replaceScene:[HowGameLayer scene]];
    
    
}

-(void)dealloc
{
    [super dealloc];
    
}


@end
