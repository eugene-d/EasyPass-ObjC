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

- (void)viewDidLoad {
    [super viewDidLoad];
    [self availableParkingLotsChart];
}

- (void)scanCode {
    [self performSegueWithIdentifier: @"Scanning" sender:nil];
}

- (void)availableParkingLotsChart {
    CGRect rect = CGRectMake(0,150.0, SCREEN_WIDTH, 100.0);
    self.availableParkingLots = [[PNCircleChart alloc]
                                 initWithFrame: rect
                                 total: [NSNumber numberWithInt: 100]
                                 current: [NSNumber numberWithInt: 60]
                                 clockwise: YES
                                 shadow: YES
                                 shadowColor: PNGrey];
    
    self.availableParkingLots.backgroundColor = [UIColor clearColor];
    [self.availableParkingLots setStrokeColor: PNGreen];
    [self.availableParkingLots strokeChart];
    
    [self.view addSubview: self.availableParkingLots];
}

@end
