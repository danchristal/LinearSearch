//
//  main.m
//  LinearSearch
//
//  Created by Dan Christal on 2016-09-06.
//  Copyright © 2016 Dan Christal. All rights reserved.
//

#import <Foundation/Foundation.h>

#define MILLION 1000000

int searchSortedArrayForInt(NSMutableArray *arrayOfNumbers, NSNumber *number){
    int numberIndex=-1;
    for(int i = 0; i<arrayOfNumbers.count; i++){
        if(arrayOfNumbers[i] == number)
            numberIndex = i;
    }
    return numberIndex;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableArray *largeArray = [[NSMutableArray alloc] init];
        
        for (int i = 0; i<MILLION; i++)
            [largeArray addObject:[NSNumber numberWithInt:i]];
        
        NSDate *methodStart = [NSDate date];
        
        /*... Perform linear search for target in massive array ... */
        int numberIndex = searchSortedArrayForInt(largeArray, [NSNumber numberWithInt:MILLION-1]);
        
        NSDate *methodFinish = [NSDate date];
        NSTimeInterval executionTime = [methodFinish timeIntervalSinceDate:methodStart];
        NSLog(@"execution Time = %f", executionTime);
        
        if(numberIndex == -1) {
            NSLog(@"Couldn't find number in array.");
        } else {
            NSLog(@"Found number at index: %d", numberIndex);
        }
        

        
        
    }
    return 0;
}

