//
//  ContinueGame2.m
//  GroupApplication
//
//  Created by Henricson Cedrick Z. Cuevas on 10/29/12.
//
//

#import "ContinueGame2.h"
#import "cocos2d.h"
#import "MyMenu.h"
#import "GameSceneLevel2.h"



@implementation ContinueGame2

+(id)scene
{
    CCScene *scene = [CCScene node];
    
    ContinueGame2 *layer = [ContinueGame2 node];
    
    [scene addChild:layer];
    
    
    
    return scene;
    
}



-(id)init
{
    if((self = [super initWithColor:ccc4(0, 0, 0, 0)]))
    {
        
        CCLabelTTF *title = [CCLabelTTF labelWithString:@"CONGRATULATIONS!" fontName:@"Arial" fontSize:40];
        title.position = ccp(170, 400);
        [self addChild:title];
        
        CCLayer *menuLayer = [[CCLayer alloc]init];
        [self addChild:menuLayer];
        
        
        //CCMenuItemFont *continueToLevelTwoButton = [CCMenuItemFont itemWithString:@"Continue" target:self selector:@selector(Continue:)];
        //continueToLevelTwoButton.position = ccp(0, 0);
        
        CCMenuItemFont *mainMenuButton = [CCMenuItemFont itemWithString:@"Main Menu" target:self selector:@selector(Mainmenu:)];
        mainMenuButton.position = ccp(0, -0);
        
        CCMenu *menu = [CCMenu menuWithItems: mainMenuButton,  nil];
        [menuLayer addChild: menu];
        
    }
    return self;
}

//-(void)Continue: (id)sender
//{
    
    //[[CCDirector sharedDirector]replaceScene:[GameSceneLevel2 scene]];
    
//}

-(void) Mainmenu: (id)sender
{
    
    [[CCDirector sharedDirector]replaceScene:[MyMenu scene]];
    
}

-(void)dealloc
{
    [super dealloc];
    
}






@end
