//
//  ViewController.m
//  JKTagListViewDemo
//
//  Created by 김정근 on 2016. 8. 31..
//  Copyright © 2016년 김정근. All rights reserved.
//

#import "ViewController.h"

// Library
#import <JKTagListView/JKTagListView.h>
#import <Masonry/Masonry.h>

@interface ViewController ()

@property (strong, nonatomic) JKTagListView *tagListView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _tagListView = [[JKTagListView alloc] init];
    _tagListView.backgroundColor = [UIColor redColor];
    [_tagListView addTag:@"야호"];
    [_tagListView addTag:@"피카츄"];
    [_tagListView addTag:@"라이츄"];
    [_tagListView addTag:@"파이리"];
    [_tagListView addTag:@"꼬북이"];
    [_tagListView addTag:@"버터풀"];
    [_tagListView addTag:@"야도란"];
    [_tagListView addTag:@"피존투"];
    [_tagListView addTag:@"또가스"];
    [_tagListView addTag:@"잠만보"];
    [_tagListView addTag:@"파치리스"];
    
    _tagListView.tagCornerWidth = 5.0f;
    _tagListView.tagBorderWidth = 1.0f;
    _tagListView.tagPaddingX = 5.0f;
    _tagListView.tagPaddingY = 10.0f;
    
    [self.view addSubview:_tagListView];
    
    [self makeConstraints];
}

- (void)makeConstraints
{
    [_tagListView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@64.0f);
        make.left.and.right.equalTo(@.0f);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
