#import "ScanningCodeController.h"

@interface ScanningCodeController ()

@end

@implementation ScanningCodeController

- (id)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder: aDecoder]) {
        self.title = NSLocalizedString(@"Scan Code", "");
        
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)addTabBarItem {
    UITabBarItem *item = [[UITabBarItem alloc]
                          initWithTabBarSystemItem: UITabBarSystemItemSearch tag: 0];
    self.tabBarItem = item;
}

@end
