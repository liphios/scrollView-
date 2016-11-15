//
//  ViewController.m
//  JINFUZI
//
//  Created by 李鹏辉 on 2016/11/15.
//  Copyright © 2016年 company. All rights reserved.
//

#import "ViewController.h"
#import "UIFontTools.h"
#import "AppDelegate.h"
#import "JINScrollView.h"
#define HexColor(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
#define MAIN_SIZE [UIScreen mainScreen].bounds.size

@interface ViewController ()<UIScrollViewDelegate>
{
    
    
    UIButton *_btn_Found;
    UIButton *_btn_Column;
    
    UIView *_lineView;
}
//@property (nonatomic, strong) UIScrollView *scrollBig;

@property (nonatomic, strong) JINScrollView *scrollBig;




@property(nonatomic,assign) BOOL isFoundView;

@property (nonatomic,strong) UISwipeGestureRecognizer *left;

@property(nonatomic,assign) CGPoint point;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initUI];
}

- (void) initUI{

//左边的侧边栏
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"侧边栏" style:UIBarButtonItemStylePlain target:self action:@selector(clickLeft)];
//右边搜索按钮
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"搜索" style:UIBarButtonItemStylePlain target:self action:@selector(clickSearch)];
    
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 150, 30)];
    _btn_Found = [[UIButton alloc] initWithFrame:CGRectMake(10, 4, 50, 20)];
    _btn_Column = [[UIButton alloc] initWithFrame:CGRectMake(80, 4, 50, 20)];
    
    [_btn_Found setTitle:@"发现" forState:UIControlStateNormal];
    [_btn_Column setTitle:@"财富" forState: UIControlStateNormal];
    UIFontTools * tools = [UIFontTools defaultUIFontTool];
    [_btn_Found.titleLabel setFont:[tools titleFont]];
    [_btn_Column.titleLabel setFont:[tools titleFont]];

    [_btn_Found setTitleColor:HexColor(0xffbb05) forState:UIControlStateNormal];
    [_btn_Column setTitleColor:HexColor(0xacacac) forState:UIControlStateNormal];
    [_btn_Found addTarget:self action:@selector(navTitleBtnActionColumn:) forControlEvents:UIControlEventTouchDown];
    [_btn_Column addTarget:self action:@selector(navTitleBtnActionColumn:) forControlEvents:UIControlEventTouchDown];
    
    CGRect frameColumn = _btn_Column.frame;
    CGRect frameFound = _btn_Found.frame;
    
    frameColumn.origin.y += 30;
    frameFound.origin.y += 30;
    frameColumn.size.height = 1;
    frameFound.size.height = 1;
    
    _lineView = [[UIView alloc] initWithFrame:frameFound];
    _lineView.backgroundColor  = HexColor(0xffbb05);
    
    [view addSubview:_lineView];
    [view addSubview:_btn_Found];
    [view addSubview:_btn_Column];
    
    [self.navigationItem setTitleView:view];
    

    [self initView];
    
}
- (void)initView{

    //大的 scroll
    self.scrollBig = [[JINScrollView alloc]initWithFrame:CGRectMake(0, 0, MAIN_SIZE.width, MAIN_SIZE.height)];
    _scrollBig.backgroundColor = [UIColor blackColor];
    _scrollBig.showsHorizontalScrollIndicator = NO;
    _scrollBig.showsVerticalScrollIndicator = NO;
    _scrollBig.pagingEnabled = YES;
    _scrollBig.delegate = self;
    _scrollBig.contentSize = CGSizeMake(MAIN_SIZE.width *2, MAIN_SIZE.height - 64 -44);
    
    /**
     *  禁止超出边界的弹簧效果;
     */
    _scrollBig.bounces = NO;
    
    UIViewController *vc1 = [[UIViewController alloc] init];
    vc1.view.backgroundColor = [UIColor redColor];
    UIViewController *vc2  = [[UIViewController alloc] init];
    vc2.view.backgroundColor = [UIColor greenColor];
    
    [self addChildViewController:vc1];
    [self addChildViewController:vc2];
    
    vc1.view.frame = CGRectMake(MAIN_SIZE.width, 0, MAIN_SIZE.width, MAIN_SIZE.height);
    
    [_scrollBig addSubview:vc1.view];
    [_scrollBig addSubview:vc2.view];
    
    [self didMoveToParentViewController:vc1];
    
    [self didMoveToParentViewController:vc2];
    
    [self.view addSubview:_scrollBig];
}


- (void)navTitleBtnActionColumn:(UIButton *)btn{
   
    CGPoint point;
    CGRect frame = btn.frame;
    frame.origin.y += 30;
    frame.size.height = 1;
    
    if (btn == _btn_Found) {
        [_btn_Found setTitleColor:HexColor(0xffbb05) forState:UIControlStateNormal];
        [_btn_Column setTitleColor:HexColor(0xacacac) forState:UIControlStateNormal];
        point = CGPointMake(0, 0);

    }else{
        [_btn_Column setTitleColor:HexColor(0xffbb05) forState:UIControlStateNormal];
        [_btn_Found setTitleColor:HexColor(0xacacac) forState:UIControlStateNormal];
        point = CGPointMake(MAIN_SIZE.width, 0);

    }
    
    [UIView animateWithDuration:0.3 animations:^{
        _scrollBig.contentOffset = point;
        _lineView.frame = frame;
    }];
}



//侧边栏展开

- (void)clickLeft{

    AppDelegate *tempAppDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    
    if (tempAppDelegate.LeftSlideVC.closed)
    {
        [tempAppDelegate.LeftSlideVC openLeftView];
    }
    else
    {
        [tempAppDelegate.LeftSlideVC closeLeftView];
    }
    
}

//搜索按钮的点击

- (void)clickSearch{

    


}


- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    
    if (scrollView == _scrollBig) {
        
        CGPoint point = scrollView.contentOffset;
        self.point = point;
        NSLog(@"x:%.0f",point.x);
        
        if (point.x < MAIN_SIZE.width) {
            NSLog(@"在发现");
//            self.isFoundView = YES;
            [self navTitleBtnActionColumn:_btn_Found];
        }else{
            NSLog(@"在专栏");
//            self.isFoundView = NO;
            [self navTitleBtnActionColumn:_btn_Column];
        }
    }
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    NSLog(@"viewWillDisappear");
    AppDelegate *tempAppDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [tempAppDelegate.LeftSlideVC setPanEnabled:NO];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"viewWillAppear");
    AppDelegate *tempAppDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [tempAppDelegate.LeftSlideVC setPanEnabled:YES];
}




@end
