//
//  ContinueGame.m
//  GroupApplication
//
//  Created by Charles Marlon G. Ramones on 10/23/12.
//
//

#import "ContinueGame.h"
#import "cocos2d.h"
#import "HelloWorldLayer.h"
#import "MyMenu.h"
#import "GameSceneLevel2.h"



@implementation ContinueGame

+(id)scene
{
    CCScene *scene = [CCScene node];
    
    ContinueGame *layer = [ContinueGame node];
    
    [scene addChild:layer];
    
    
    
    return scene;
    
}



-(id)init
{
    if((self = [super initWithColor:ccc4(0, 0, 0, 0)]))
    {
        
        CCLabelTTF *title = [CCLabelTTF labelWithString:@"LEVEL FINISHED" fontName:@"Arial" fontSize:40];
        title.position = ccp(170, 400);
        [self addChild:title];
        
        CCLayer *menuLayer = [[CCLayer alloc]init];
        [self addChild:menuLayer];
        
        
        CCMenuItemFont *continueToLevelTwoButton = [CCMenuItemFont itemWithString:@"Continue" target:self selector:@selector(Continue:)];
        continueToLevelTwoButton.position = ccp(0, 0);
        
        CCMenuItemFont *mainMenuButton = [CCMenuItemFont itemWithString:@"Main Menu" target:self selector:@selector(Mainmenu:)];
        mainMenuButton.position = ccp(0, -50);
        
        CCMenu *menu = [CCMenu menuWithItems:continueToLevelTwoButton, mainMenuButton,  nil];
        [menuLayer addChild: menu];
        
    }
    return self;
}

-(void)Continue: (id)sender
{
    
    [[CCDirector sharedDirector]replaceScene:[GameSceneLevel2 scene]];
    
}

-(void) Mainmenu: (id)sender
{
    
    [[CCDirector sharedDirector]replaceScene:[MyMenu scene]];
    
}

-(void)dealloc
{
    [super dealloc];
    
}






@end
