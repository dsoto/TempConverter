#import "Converter.h"

@implementation Converter

- (void) awakeFromNib {
	celsiusValue = 20;
	[self convertCelsiusToFahrenheit];
	[self setOutlets];
}
	
- (IBAction)convert:(id)sender {
    if ([sender isEqual: slider]) {
		celsiusValue = [slider intValue];
		[self convertCelsiusToFahrenheit];
	}
    if ([sender isEqual: celsiusTextField]) {
		celsiusValue = [celsiusTextField intValue];
		[self convertCelsiusToFahrenheit];
	}
    if ([sender isEqual: fahrenheitTextField]) {
		fahrenheitValue = [fahrenheitTextField intValue];
		[self convertFahrenheitToCelsius];
	}
	[self setOutlets];
}

- (IBAction)setOutlets {
	[slider setIntValue: celsiusValue];
	[celsiusTextField setIntValue: celsiusValue];
	[fahrenheitTextField setIntValue: fahrenheitValue];
}

- (void)convertCelsiusToFahrenheit {
	fahrenheitValue = celsiusValue * 9/5 + 32;
}

- (void)convertFahrenheitToCelsius {
	celsiusValue = (fahrenheitValue - 32) * 5/9;
}

@end
