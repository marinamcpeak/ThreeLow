//
//  Dice.h
//  ThreeLow
// Personal Notes: This header file defines the class "Dice" and everything about it.  This is public and it serves to separate the definition of the class from how its implemented.  In this regard, the header is an interface for the rest of your program to interact with.
//
//  Created by Marina Mona June McPeak on 2019-05-29.
//  Copyright © 2019 Marina Mona June McPeak. All rights reserved.
//

// Personal Notes: This import statement (Foundation) is important, because it brings in important NSObjects like NSString, NSArray, etc. The reason it still has to be imported, despite it also being imported into main.m is because main.m is executed last.  Therefore, this header file cannot 'inherit' the Foundation class from main, whereas, the method file (Dice.m) will inherit Foundation from the header file. The angle brackets around Foundation indicate that the compiler should search for code to import.
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// Interface - Personal Notes: This is an interface declaration.  It must begin with @interface and end with @end.  These essentially designate the beginning and the end of the class interface definition.  Following the @interface is a name and this name MUST match the name of the .h and .m files.  The name is followed by a colon and another name.  The colon is indicating that the name to follow is the parent class of this class.  In this case, the parent is NSObject, which Dice will inherit all the properties and methods of.  NSObjeect is a generic object class that defines some basic structuree about objects in Objective-C.  However, classes can inherit from any other class.
@interface Dice : NSObject

// Property - Personal Notes: Properties are data items about the object.  In this case, a regular variable declaration that includes the datatype (Int -> integer) and a name ("face"). The name face was used because each "face" of a die will have a value that can be represented as an integer (numbers 1-6).
@property int face;

// Methods - Personal Notes: The following are methods, but they're only the names associated with each method.  Known as the method signatures.  The indicate what kind of data will be returned (if any) and what parameters are required to call the method.  Instance methods require an instance of the class to be called. For example, in the main.m file an instance of the class dice will have to be created before this method can be called.

// Personal Notes: This is an instance method (indicated by the dashed line in front) that will return an instancetype.  This method will return an instance of the class (Dice), which contains this method. init is used to initialize a new object immediately after memory for it has been allocated.
- (instancetype) init;

// Personal Notes: An instance method named visibleFaceOfDie that will return the date type NSString.
- (NSString *) visibleFaceOfDie;

// Personal Notes: The rollDice method, does not have any parameters, nor does it return anything (indicated by void). It is also an instance method.
- (void) rollDice;

@end

NS_ASSUME_NONNULL_END
