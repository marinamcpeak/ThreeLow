//
//  GameController.m
//  ThreeLow
//
//  Created by Marina Mona June McPeak on 2019-05-29.
//  Copyright © 2019 Marina Mona June McPeak. All rights reserved.
//

#import "GameController.h"
#import "Dice.h"

#define numberOfDice 6

@implementation GameController

int attempts = 0;
int minScore = 30;
int currentScore = 0;

- (instancetype) init {
    
    [self createDice];
    
    return self;
    
}

- (void) testDice {
    
    // Creating a new class instance (called dice) of the class Dice.
    Dice *dice = [[Dice alloc] init];
    // Calling the visibleFaceOfDie method, which is a NSString.
    NSLog(@"Dice face is currently %@", [dice visibleFaceOfDie]);
    // Recalling the rollDice and visibleFaceOfDie method to get a new value.
    [dice rollDice];
    NSLog(@"Dice face is now %@", [dice visibleFaceOfDie]);
    
}

- (void) createDice {
    
    self.arrayOfUnheldDice = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < numberOfDice; i++) {
        
        [self.arrayOfUnheldDice addObject:[[Dice alloc] init]];
        
    }
    
}

- (void) printDice {
    
    NSString *tableDice = @"";
    NSString *handDice = @"";
    NSString *mark1, *mark2, *holdMark1 = @"[", *holdMark2 = @"]", *freeMark = @" ";
    Dice *dice;
    for(int i = 0; i < _arrayOfUnheldDice.count; i++) {
            dice = self.arrayOfUnheldDice[i];
            mark1 = freeMark;
            mark2 = freeMark;
        
            tableDice = [tableDice stringByAppendingString:[NSString stringWithFormat:@"%d%@%@%@ ", i+1, mark1,  [dice visibleFaceOfDie], mark2 ]];
    }
    for(int i = 0; i < _arrayOfHeldDice.count; i++) {
            dice = self.arrayOfHeldDice[i];
            mark1 = holdMark1;
            mark2 = holdMark2;
                
            handDice = [handDice stringByAppendingString:[NSString stringWithFormat:@"%d%@%@%@ ", i+1, mark1,  [dice visibleFaceOfDie], mark2 ]];
    }
    
    NSLog(@"%@", tableDice);
    NSLog(@"%@", handDice);
    [self printScore];
    
}

- (void) printScore {

    if (minScore > currentScore && attempts > 0){

        minScore = currentScore;
        NSLog(@"Congratulations! You lowest score is now: %d", currentScore);

    }

    NSLog(@"Current points: %d   Attempts: %d   Lower score: %d", currentScore, attempts, minScore);

}

- (void) rollDice {
    
    for (int i = 0; i < _arrayOfUnheldDice.count; i++) {
        
        [self.arrayOfUnheldDice[i] rollDice];
        
    }
    
}

- (void) resetDice{
    
    [self.arrayOfHeldDice removeAllObjects];
    
    attempts = 0;
    
    self.createDice;
}

- (void) holdDice:(int)position {
    
    Dice *selected = [self.arrayOfUnheldDice objectAtIndex:position - 1];
    [self.arrayOfHeldDice addObject:selected];
    [self.arrayOfUnheldDice removeObjectAtIndex:position-1];
    
}

@end
