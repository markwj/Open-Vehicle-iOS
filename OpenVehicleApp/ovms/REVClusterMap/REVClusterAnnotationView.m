//
//  
//    ___  _____   ______  __ _   _________ 
//   / _ \/ __/ | / / __ \/ /| | / / __/ _ \
//  / , _/ _/ | |/ / /_/ / /_| |/ / _// , _/
// /_/|_/___/ |___/\____/____/___/___/_/|_| 
//
//  Created by Bart Claessens. bart (at) revolver . be
//

#import "REVClusterAnnotationView.h"


@implementation REVClusterAnnotationView

@synthesize coordinate;

- (id) initWithAnnotation:(id<MKAnnotation>)annotation reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithAnnotation:annotation reuseIdentifier:reuseIdentifier];
    if ( self )
    {
        label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
        [self addSubview:label];
        label.textColor = [UIColor whiteColor];
        label.backgroundColor = [UIColor clearColor];
        label.font = [UIFont boldSystemFontOfSize:12];
        label.textAlignment = NSTextAlignmentCenter;
        label.shadowColor = [UIColor blackColor];
        label.shadowOffset = CGSizeMake(0, -1);
    }
    return self;
}

- (void) setClusterText:(NSString *)text
{
    label.text = text;
}

#if !__has_feature(objc_arc)
- (void) dealloc
{
    [label release], label = nil;
    [super dealloc];
}
#endif

@end
