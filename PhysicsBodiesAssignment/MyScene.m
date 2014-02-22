//
//  MyScene.m
//  PhysicsBodiesAssignment
//
//  Created by iceking on 2/21/14.
//  Copyright (c) 2014 iceking. All rights reserved.
//

#import "MyScene.h"
@interface MyScene()
@property SKSpriteNode * mySquare1;
@property SKSpriteNode * mySquare2;
@property SKSpriteNode * mySquare3;
@property SKSpriteNode * mySquare4;
@property SKSpriteNode * myShelf;
@property SKPhysicsJoint * myRopeJoint1;
@property SKPhysicsJoint * myRopeJoint2;
@property SKPhysicsJoint * myRopeJoint3;

@end

@implementation MyScene

-(void) activateJointRope{
    _myRopeJoint1 = [SKPhysicsJointLimit jointWithBodyA:_mySquare1.physicsBody bodyB:_mySquare2.physicsBody anchorA:_mySquare1.position anchorB:_mySquare2.position];
    _myRopeJoint2 = [SKPhysicsJointLimit jointWithBodyA:_mySquare2.physicsBody bodyB:_mySquare3.physicsBody anchorA:_mySquare2.position anchorB:_mySquare3.position];
    _myRopeJoint3 = [SKPhysicsJointLimit jointWithBodyA:_mySquare3.physicsBody bodyB:_mySquare4.physicsBody anchorA:_mySquare3.position anchorB:_mySquare4.position];
    
    [self.physicsWorld addJoint:_myRopeJoint1];
    [self.physicsWorld addJoint:_myRopeJoint2];
    [self.physicsWorld addJoint:_myRopeJoint3];
}



-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.backgroundColor = [SKColor colorWithRed:0.15 green:0.15 blue:0.3 alpha:1.0];
        
        SKLabelNode *myLabel = [SKLabelNode labelNodeWithFontNamed:@"Chalkduster"];
        
        myLabel.text = @"Hello, World!";
        myLabel.fontSize = 30;
        myLabel.position = CGPointMake(CGRectGetMidX(self.frame),
                                       CGRectGetMidY(self.frame));
        
        [self addChild:myLabel];
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        
        SKSpriteNode *sprite = [SKSpriteNode spriteNodeWithImageNamed:@"Spaceship"];
        
        sprite.position = location;
        
        SKAction *action = [SKAction rotateByAngle:M_PI duration:1];
        
        [sprite runAction:[SKAction repeatActionForever:action]];
        
        [self addChild:sprite];
    }
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
