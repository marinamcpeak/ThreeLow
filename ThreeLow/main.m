//
//  main.m
//  ThreeLow
//
//  Created by Marina Mona June McPeak on 2019-05-29.
//  Copyright © 2019 Marina Mona June McPeak. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Dice.h"
#import "GameController.h"

enum OperationType {
    roll = 1,
    hold = 2,
    reset = 3,
} Operator;

long captureIntFromConsole(const char* prompt) {
    long number;
    char nextChar;
    for (;;) {
        printf("%s",prompt);
        if (scanf(" %ld%c", &number, &nextChar) == 2 && nextChar == '\n') {
            return number;
        }
        else {
            printf("Ummm...I only understand integer numbers\n");
            scanf("%*[^\n]c"); //ignore all characters until the newline char;
            scanf("%*c"); //ignore the newline char;
        }
    }
}

void modifyString(NSInteger Operator, GameController *gameController) {
        
        switch (Operator) {
                
            case roll: {
                
                [gameController rollDice];
                [gameController printDice];
                
                break;
                
            }
                
            case hold: {
                
                NSLog(@"Input the corresponding number to hold/unhold a die [seperate each one with a space]: ");
                NSString *formattedHoldString = [InputHandler formatUserInput];
                NSArray *list = [formattedHoldString componentsSeparatedByString:@" "];
                
                for (int i = 0; i < [list count]; i++) {
                    
                    NSString *str = [list objectAtIndex:i];
                    NSInteger number = [str integerValue];
                    
                    if (number > 6 || number < 1) {
                        
                        NSLog(@"Error: %@ must be a number between 1 and 6 ", str);
                        continue;
                        
                    } else {
                        
                    [gameController holdDice:(int)number];
                        
                    }
                    
                }
                
                [gameController printDice];
                
                break;
            }
                
            case reset: {
                
                [gameController resetDice];
                [gameController printDice];
                
                break;
                
            }
                
            default: {
                break;
            }
            
        }
    
}

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
            
            NSLog(@"Let's Play ThreeLow");
            GameController *gameControllerMain = [[GameController alloc] init];
            [gameControllerMain createDice];
            [gameControllerMain printDice];
        do {
            NSInteger currentOperation;
            for(;;) {
                currentOperation = captureIntFromConsole("Enter 1 to reroll the dice, 2 to hold dice, or 3 to reset: ");
                if (currentOperation <= 3 && currentOperation >= 1 ) {
                    modifyString(currentOperation, gameControllerMain);
                    break;
                } else {
                    printf("Oh no. Invalid input. Let's try again.\n");
                }
            }
        } while (YES);
        
    }
    
    return 0;
    
}
