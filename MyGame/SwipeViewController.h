
#import <UIKit/UIKit.h>

@protocol SwipeViewControllerDelegate <NSObject>

@end

@interface SwipeViewController : UINavigationController <UIPageViewControllerDelegate,UIPageViewControllerDataSource,UIScrollViewDelegate>

@property (nonatomic, strong) NSMutableArray *viewControllerArray;
@property (nonatomic, weak) id<SwipeViewControllerDelegate> navDelegate;
@property (nonatomic, strong) UIView *selectionBar;
@property (nonatomic, strong)UIPageViewController *pageController;
@property (nonatomic, strong)UIView *navigationView;
@property (nonatomic, strong)UIButton *shopButton;
@property (nonatomic, strong)UIButton *playGameButton;
@property (nonatomic, strong)UIButton *listCardButton;



@end
