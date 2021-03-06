//
//  MomentDetailViewController.m
//  作业记事本
//
//  Created by Patientman on 16/1/11.
//  Copyright © 2016年 Patientman. All rights reserved.
//

#import "MomentDetailViewController.h"

@interface MomentDetailViewController ()

@property (nonatomic,strong) NSDictionary *dictionary;

@end

@implementation MomentDetailViewController

-(MomentDetailViewController *)initWithDictionary:(NSDictionary *)dictionary{
    
    self = [super init];
    self.dictionary = dictionary;
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    NSString *yearAndMonthAndDay = [self.dictionary objectForKey:@"yearAndMonthAndDay"];
    NSString *content = [self.dictionary objectForKey:@"content"];
    

    [self setSingleLineTitle:yearAndMonthAndDay];
    

    //导航栏20 titleLabel44  [UIScreen mainScreen].bounds.size.width-40 即宽度！
    UILabel *contentText =[[UILabel alloc] initWithFrame:CGRectMake(20, 84, [UIScreen mainScreen].bounds.size.width-40, 20)];
    contentText.text = content;
    contentText.textColor = [UIColor blackColor];
    contentText.font = [UIFont systemFontOfSize:15];
    contentText.textAlignment = NSTextAlignmentLeft;
    [self.view addSubview:contentText];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
