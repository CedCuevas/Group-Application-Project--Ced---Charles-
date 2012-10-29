//
//  GameOver2.m
//  GroupApplication
//
//  Created by Henricson Cedrick Z. Cuevas on 10/29/12.
//
//

#import "GameOver2.h"
#import "cocos2d.h"
#import "GameSceneLevel2.h"
#import "MyMenu.h"


@implementation GameOver2
+(id)scene
    {
        CCScene *scene = [CCScene node];
        
        GameOver2 *layer = [GameOver2 node];
        
        [scene addChild:layer];
        
        
        
        return scene;
        
    }
    
    
    
-(id)init
    {
        if((self = [super initWithColor:ccc4(0, 0, 0, 0)]))
        {
            
            CCLabelTTF *title = [CCLabelTTF labelWithString:@"GAME OVER!" fontName:@"Arial" fontSize:40];
            title.position = ccp(170, 400);
            [self addChild:title];
            
            
            CCLayer *menuLayer = [[CCLayer alloc]init];
            [self addChild:menuLayer];
            
            
            CCMenuItemFont *retryGameButton = [CCMenuItemFont itemWithString:@"Retry" target:self selector:@selector(Retry)];
            retryGameButton.position = ccp(0, 0);
            
            CCMenuItemFont *mainMenuButton = [CCMenuItemFont itemWithString:@"Main Menu" target:self selector:@selector(Mainmenu)];
            mainMenuButton.position = ccp(0, -50);

            
            CCMenu *menu = [CCMenu menuWithItems:retryGameButton, mainMenuButton,  nil];
            [menuLayer addChild: menu];
            
            
        }
        return self;
    }
    
-(void)Retry
{
        [[CCDirector sharedDirector]replaceScene:[GameSceneLevel2 scene]];
}

-(void)Mainmenu
{
    [[CCDirector sharedDirector]replaceScene:[MyMenu scene]];
}
    
-(void)dealloc
{
    [super dealloc];
}
    
    
    


@end
