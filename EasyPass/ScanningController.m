#import "ScanningController.h"

@interface ScanningController ()

@end

@implementation ScanningController

- (id)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder: aDecoder])  {
        self.tabBarController.delegate = self;
        self.delegate = self;
    }
    
    return  self;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    if ([self.viewControllers count] > 0) {
        self.navigationItem.title = [self.viewControllers.firstObject title];
    }
}

- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController {
    UIViewController *destination = viewController;
    
    if ([viewController isKindOfClass: [UINavigationController class]]) {
        UINavigationController *controller = (UINavigationController *)viewController;
        destination = controller.visibleViewController;
    }
    
    self.navigationItem.title = destination.title;
}

@end
