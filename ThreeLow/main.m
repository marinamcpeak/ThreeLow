//
//  main.m
//  ThreeLow
//
//  Created by Marina Mona June McPeak on 2019-05-29.
//  Copyright © 2019 Marina Mona June McPeak. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
    
        // Creating a new class instance (called dice) of the class Dice.
        Dice *dice = [[Dice alloc] init];
        // Calling the visibleFaceOfDie method, which is a NSString.
        NSLog(@"Dice face is currently %@", [dice visibleFaceOfDie]);
        // Recalling the rollDice and visibleFaceOfDie method to get a new value.
        [dice rollDice];
        NSLog(@"Dice face is now %@", [dice visibleFaceOfDie]);
        
    }
    
    return 0;
    
}
