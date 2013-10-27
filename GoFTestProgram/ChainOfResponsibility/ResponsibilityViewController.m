//
//  ResponsibilityViewController.m
//  GoFTestProgram
//
//  Created by 鹿島 章 on 2013/10/28.
//  Copyright (c) 2013年 akashima. All rights reserved.
//

#import "ResponsibilityViewController.h"
#import "Responsible.h"
#import "Question.h"
#import "ClassTeacher.h"

@interface ResponsibilityViewController ()

@end

@implementation ResponsibilityViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
	// 本来ならnakagawaもveteranもそれぞれClassTeacher以外のクラスを作る。
	ClassTeacher *nakagawa = [[ClassTeacher alloc] init];
	[nakagawa setResponsibleWithResponsePerson:@"nakagawa"];
	[nakagawa setLevel:0];
	ClassTeacher *rookie = [[ClassTeacher alloc] init];
	[rookie setResponsibleWithResponsePerson:@"rookie teacher"];
	[rookie setLevel:1];
	ClassTeacher *veteran = [[ClassTeacher alloc] init];
	[veteran setResponsibleWithResponsePerson:@"veteran teacher"];
	[veteran setLevel:2];

	Question *questionA = [[Question alloc] init];
	[questionA setLevel:1];
	[questionA setQuestion:@"?????"];

	[nakagawa setNextWithResponsible:[rookie setNextWithResponsible:veteran]];
	[nakagawa putQuestionWithQestion:questionA];

	[nakagawa release];
	[rookie release];
	[veteran release];
	[questionA release];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
