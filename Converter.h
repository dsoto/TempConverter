#import <Cocoa/Cocoa.h>

@interface Converter : NSObject 
{
	// outlets
	IBOutlet NSSlider *slider;
    IBOutlet NSTextField *celsiusTextField;
    IBOutlet NSTextField *fahrenheitTextField;

	// member variables
	int celsiusValue;
	int fahrenheitValue;
}

// methods
- (void)convert:(id)sender;
- (void)setOutlets;
- (void)convertCelsiusToFahrenheit;
- (void)convertFahrenheitToCelsius;

@end