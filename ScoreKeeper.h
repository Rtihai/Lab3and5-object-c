#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject
@property (nonatomic) NSInteger rightCount;
@property (nonatomic) NSInteger wrongCount;
@property (nonatomic, assign) double lastTime;
@property (nonatomic, assign) double totalTime;

- (void) printScore;
- (void) printAverageTime;

@end
