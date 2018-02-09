//
//  Texture2dCustom.m
//  OpenGLES
//
//  Created by Hoang Thuan on 12/27/17.
//  Copyright © 2017 Hoang Thuan. All rights reserved.
//

#import "Texture2dCustom.h"

@interface Texture2dCustom()

@end

@implementation Texture2dCustom

- (id)initWithEffect:(GLKBaseEffect *)baseEffect {
    if((self = [super init])) {
        self.baseEffect = baseEffect;
    }
    return self;
}

- (void)render{
    
    self.baseEffect.texture2d0.name = self.textureInfo.name;
    self.baseEffect.texture2d0.target = self.textureInfo.target;
    self.baseEffect.texture2d0.enabled = true;
    
    GLKMatrix4 modelviewMatrix = GLKMatrix4MakeTranslation(self.position.x, self.position.y, -6.0f);
    //modelviewMatrix = GLKMatrix4Rotate(modelviewMatrix, GLKMathDegreesToRadians(self.rotation), 0.0f, 0.0f, 1.0f);
    modelviewMatrix = GLKMatrix4Scale(modelviewMatrix, self.scale, self.scale, -6.0f);
    self.baseEffect.transform.modelviewMatrix = modelviewMatrix;
    
    [self.baseEffect prepareToDraw];
    
    glDrawArrays(GL_TRIANGLES, 0, 6);
    
}

- (void)update {
    self.position = GLKVector2Add(self.position, self.velocity);
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    if(self.position.y > screenRect.size.height/2){
        //GLKBaseEffect*tempbaseEffect = self.baseEffect;
        //self.baseEffect.constantColor = GLKVector4Make(1.0f, 0.0f, 0.0f, 1.0f);
        //NSLog(@"Mờ...");
    }
}

@end
