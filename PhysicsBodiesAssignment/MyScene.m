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
@property SKSpriteNode * mySquare5;
@property SKSpriteNode * mySquare6;
@property SKSpriteNode * mySquare7;
@property SKSpriteNode * mySquare8;
@property SKSpriteNode * mySquare9;
@property SKSpriteNode * mySquare10;
@property SKSpriteNode * myShelf;
@property SKPhysicsJoint * myRopeJoint1;
@property SKPhysicsJoint * myRopeJoint2;
@property SKPhysicsJoint * myRopeJoint3;
@property SKPhysicsJoint * mySpringJoint1;
@property SKPhysicsJoint * mySpringJoint2;
@property SKPhysicsJoint * myFixedJoint3;
@property SKPhysicsJoint * myFixedJoint4;
@property SKPhysicsJoint * myPinJoint5;
@property SKPhysicsJoint * myPinJoint6;

@end

@implementation MyScene

-(void) activateJointRope{
    _myRopeJoint1 = [SKPhysicsJointLimit jointWithBodyA:_mySquare1.physicsBody bodyB:_mySquare2.physicsBody anchorA:_mySquare1.position anchorB:_mySquare2.position];
    _myRopeJoint2 = [SKPhysicsJointLimit jointWithBodyA:_mySquare2.physicsBody bodyB:_mySquare3.physicsBody anchorA:_mySquare2.position anchorB:_mySquare3.position];
    _myRopeJoint3 = [SKPhysicsJointLimit jointWithBodyA:_mySquare3.physicsBody bodyB:_mySquare4.physicsBody anchorA:_mySquare3.position anchorB:_mySquare4.position];
    _mySpringJoint1 = [SKPhysicsJointSpring jointWithBodyA:_mySquare4.physicsBody bodyB:_mySquare5.physicsBody anchorA:_mySquare4.position anchorB:_mySquare5.position];
    _mySpringJoint2 = [SKPhysicsJointSpring jointWithBodyA:_mySquare4.physicsBody bodyB:_mySquare7.physicsBody anchorA:_mySquare4.position anchorB:_mySquare7.position];
    _myFixedJoint3 = [SKPhysicsJointFixed jointWithBodyA:_mySquare5.physicsBody bodyB:_mySquare6.physicsBody anchor:_mySquare5.position];
    _myFixedJoint4 = [SKPhysicsJointFixed jointWithBodyA:_mySquare7.physicsBody bodyB:_mySquare8.physicsBody anchor:_mySquare5.position];
    _myPinJoint5 = [SKPhysicsJointPin jointWithBodyA:_mySquare2.physicsBody bodyB:_mySquare9.physicsBody anchor:_mySquare2.position];
    _myPinJoint6 = [SKPhysicsJointPin jointWithBodyA:_mySquare3.physicsBody bodyB:_mySquare10.physicsBody anchor:_mySquare2.position];
    
    
    
    [self.physicsWorld addJoint:_myRopeJoint1];
    [self.physicsWorld addJoint:_myRopeJoint2];
    [self.physicsWorld addJoint:_myRopeJoint3];
    [self.physicsWorld addJoint:_mySpringJoint1];
    [self.physicsWorld addJoint:_mySpringJoint2];
    [self.physicsWorld addJoint:_myFixedJoint3];
    [self.physicsWorld addJoint:_myFixedJoint4];
    [self.physicsWorld addJoint:_myPinJoint5];
    [self.physicsWorld addJoint:_myPinJoint6];
}


-(void) spawnSquares{
    _mySquare1 = [[SKSpriteNode alloc]initWithColor:[SKColor redColor] size:CGSizeMake(70, 70)];
    _mySquare2 = [[SKSpriteNode alloc]initWithColor:[SKColor purpleColor] size:CGSizeMake(70,70)];
    _mySquare3 = [[SKSpriteNode alloc]initWithColor:[SKColor orangeColor] size:CGSizeMake(70,70)];
    _mySquare4 = [[SKSpriteNode alloc]initWithColor:[SKColor yellowColor] size:CGSizeMake(70,70)];
    _mySquare5 = [[SKSpriteNode alloc]initWithColor:[SKColor blueColor] size:CGSizeMake(70,70)];
    _mySquare6 = [SKSpriteNode spriteNodeWithColor:[SKColor greenColor] size:CGSizeMake(70, 140)];
    _mySquare7 = [[SKSpriteNode alloc]initWithColor:[SKColor blueColor] size:CGSizeMake(70,70)];
    _mySquare8 = [SKSpriteNode spriteNodeWithColor:[SKColor greenColor] size:CGSizeMake(70, 140)];
    _mySquare9 = [SKSpriteNode spriteNodeWithColor:[SKColor grayColor] size:CGSizeMake(20, 100)];
    _mySquare10 = [SKSpriteNode spriteNodeWithColor:[SKColor lightGrayColor] size:CGSizeMake(20, 100)];
    
    [_mySquare1 setPosition:CGPointMake(self.size.width/1.5, self.size.height/1.5)];
    [_mySquare2 setPosition:CGPointMake(self.size.width/1.5, self.size.height/2)];
    [_mySquare3 setPosition:CGPointMake(self.size.width/1.5, self.size.height/2.5)];
    [_mySquare4 setPosition:CGPointMake(self.size.width/1.5, self.size.height/3)];
    [_mySquare5 setPosition:CGPointMake(self.size.width/1.2, self.size.height/3.5)];
    [_mySquare6 setPosition:CGPointMake(self.size.width/1.2, self.size.height/5.5)];
    [_mySquare7 setPosition:CGPointMake(self.size.width/1.3, self.size.height/3.5)];
    [_mySquare8 setPosition:CGPointMake(self.size.width/1.3, self.size.height/5.5)];
    [_mySquare9 setPosition:CGPointMake(self.size.width/1.5, self.size.height/3)];
    [_mySquare10 setPosition:CGPointMake(self.size.width/1.5, self.size.height/3)];
    
    _mySquare1.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare1.size];
    _mySquare2.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare2.size];
    _mySquare3.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare3.size];
    _mySquare4.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare4.size];
    _mySquare5.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare5.size];
    _mySquare6.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare6.size];
    _mySquare7.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare7.size];
    _mySquare8.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare8.size];
    _mySquare9.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare8.size];
    _mySquare10.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare8.size];
    
    [_mySquare1.physicsBody setRestitution:1.0];
    [_mySquare2.physicsBody setRestitution:1.0];
    [_mySquare3.physicsBody setRestitution:1.0];
    [_mySquare4.physicsBody setRestitution:1.0];
    [_mySquare5.physicsBody setRestitution:1.0];
    [_mySquare6.physicsBody setRestitution:1.0];
    [_mySquare7.physicsBody setRestitution:1.0];
    [_mySquare8.physicsBody setRestitution:1.0];
    [_mySquare9.physicsBody setRestitution:0.5];
    [_mySquare10.physicsBody setRestitution:0.5];
    
    
    [self addChild:_mySquare1];
    [self addChild:_mySquare2];
    [self addChild:_mySquare3];
    [self addChild:_mySquare4];
    [self addChild:_mySquare5];
    [self addChild:_mySquare6];
    [self addChild:_mySquare7];
    [self addChild:_mySquare8];
    [self addChild:_mySquare9];
    [self addChild:_mySquare10];
}


-(void) makeShelf{
    _myShelf = [[SKSpriteNode alloc]initWithColor:[SKColor brownColor] size:CGSizeMake(40,40)];
    _myShelf.position = CGPointMake(self.size.width/2, self.size.height/2);
    _myShelf.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_myShelf.size];
    [_myShelf.physicsBody setDynamic:NO];
    
    [self addChild:_myShelf];
    
    
}


-(id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        self.scaleMode = SKSceneScaleModeAspectFit;
        self.physicsBody = [SKPhysicsBody bodyWithEdgeLoopFromRect:self.frame];
        [self.physicsBody setRestitution:1];
        
        
        [self spawnSquares];
        [self activateJointRope];
        //[self makeShelf];
        
      
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    if (_mySquare1.physicsBody.dynamic) {
        
        [_mySquare1.physicsBody setDynamic:NO];
    }
    
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        [_mySquare1 setPosition:location];
    }
}



-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        [_mySquare1 setPosition:location];
        
    }
}

-(void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event  {
    
    if (!_mySquare1.physicsBody.dynamic) {
        [_mySquare1.physicsBody setDynamic:YES];
    }
  
    
}

-(void) touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event{
    
    if (!_mySquare1.physicsBody.dynamic) {
        [_mySquare1.physicsBody setDynamic:YES];
    }
   
    
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
