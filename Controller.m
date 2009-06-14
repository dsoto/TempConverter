#import "Controller.h"

@implementation Controller

- (id)init {
	[super init];
	return self;
}

-(void)awakeFromNib {
	[self restart:self];
}

// reset seconds to zero
// release previous timer
// set timer to call tick every second
- (IBAction)restart:(id)sender {
	seconds = 0;
	isRunning = true;
	[timer invalidate];
	timer = [NSTimer scheduledTimerWithTimeInterval:1.0
											 target:self
										   selector:@selector(tick)
										   userInfo:NULL
											repeats:YES];
}

// receiver for pause button
- (IBAction)sendPause:(id)sender{
	[self pause];
}

// pauses timer by toggling boolean
- (void)pause{
	isRunning = !isRunning;
}

// increments seconds by one second
// updates time outlet
- (void)tick{
	if (isRunning) {
		seconds += 1;
		[time setStringValue:
		 [NSString	stringWithFormat:@"%02d:%02d:%02d",
		  (seconds / 3600) % 24,
		  (seconds / 60) % 60,
		  seconds % 60]];		
	}
}

// adds 60 seconds to time
// updates time outlet
- (IBAction)addMinute:(id)sender {
	seconds += 60;
	[time setStringValue:
	 [NSString	stringWithFormat:@"%02d:%02d:%02d",
	  (seconds / 3600) % 24,
	  (seconds / 60) % 60,
	  seconds % 60]];			
}

// receiver for restart button
- (IBAction)sendRestart:(id)sender {
    [self restart:self];
}


@end
