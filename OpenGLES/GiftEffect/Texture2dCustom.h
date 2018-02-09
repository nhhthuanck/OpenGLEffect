//
//  Texture2dCustom.h
//  OpenGLES
//
//  Created by Hoang Thuan on 12/27/17.
//  Copyright © 2017 Hoang Thuan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <GLKit/GLKit.h>

@interface Texture2dCustom : NSObject

- (id)initWithEffect:(GLKBaseEffect *)baseEffect;

@property (nonatomic, strong) GLKTextureInfo *textureInfo;
@property (nonatomic, weak) GLKBaseEffect *baseEffect;
@property (assign) GLKVector2 position;
@property (assign) float rotation;
@property (assign) float scale;
@property (assign) GLKVector2 velocity;

- (void)render;
- (void)update;

@end
