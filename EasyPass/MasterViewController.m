#import "MasterViewController.h"

@interface MasterViewController ()

@end

@implementation MasterViewController

- (id)initWithCoder:(NSCoder *)aDecoder {
    
    if (self = [super initWithCoder: aDecoder]) {
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc]
                                      initWithTitle: NSLocalizedString(@"Scan Code", "")
                                      style: UIBarButtonItemStylePlain
                                      target: self
                                      action: @selector(scanCode)];
        
        self.navigationItem.rightBarButtonItem = barButton;
    }
    
    return  self;
}

- (void)scanCode {
    [self performSegueWithIdentifier: @"Scanning" sender:nil];
}

@end
