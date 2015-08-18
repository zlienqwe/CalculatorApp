//
//  ViewController.m
//  CalculatorApp
//
//  Created by Zlien on 8/17/15.
//  Copyright (c) 2015 Zlien. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSMutableString *regString;
    int first;
    int second;
    int result;
    int typeOfCal;
}
@end


@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    regString=[NSMutableString stringWithCapacity:10];
//    self.resultField.text=@"";
    
    UITextField *calResult = [[UITextField alloc]initWithFrame:CGRectMake(8, 28, 304, 64)];
        calResult.backgroundColor = [UIColor redColor];
        calResult.text = @"0";
    
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        button1.frame = CGRectMake(8, 100, 70, 70);
        button1.backgroundColor = [UIColor redColor];
        [button1 setTitle:@"1" forState:UIControlStateNormal];
        button1.showsTouchWhenHighlighted = YES;
        button1.adjustsImageWhenHighlighted = NO;
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        button2.frame = CGRectMake(86, 100, 70, 70);
        button2.backgroundColor = [UIColor redColor];
        [button2 setTitle:@"2" forState:UIControlStateNormal];
        button2.showsTouchWhenHighlighted = YES;
        button2.adjustsImageWhenHighlighted = NO;
    
    UIButton *button3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        button3.frame = CGRectMake(164, 100, 70, 70);
        button3.backgroundColor = [UIColor redColor];
        [button3 setTitle:@"3" forState:UIControlStateNormal];
        button3.showsTouchWhenHighlighted = YES;
        button3.adjustsImageWhenHighlighted = NO;
    
    UIButton *button4 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        button4.frame = CGRectMake(8, 178, 70, 70);
        button4.backgroundColor = [UIColor redColor];
        [button4 setTitle:@"4" forState:UIControlStateNormal];
        button4.showsTouchWhenHighlighted = YES;
        button4.adjustsImageWhenHighlighted = NO;
    
    UIButton *button5 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        button5.frame = CGRectMake(86, 178, 70, 70);
        button5.backgroundColor = [UIColor redColor];
        [button5 setTitle:@"5" forState:UIControlStateNormal];
        button5.showsTouchWhenHighlighted = YES;
        button5.adjustsImageWhenHighlighted = NO;
    
    UIButton *button6 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        button6.frame = CGRectMake(164, 178, 70, 70);
        button6.backgroundColor = [UIColor redColor];
        [button6 setTitle:@"6" forState:UIControlStateNormal];
        button6.showsTouchWhenHighlighted = YES;
        button6.adjustsImageWhenHighlighted = NO;
    
    UIButton *button7 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        button7.frame = CGRectMake(8, 256, 70, 70);
        button7.backgroundColor = [UIColor redColor];
        [button7 setTitle:@"7" forState:UIControlStateNormal];
        button7.showsTouchWhenHighlighted = YES;
        button7.adjustsImageWhenHighlighted = NO;
    
    UIButton *button8 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        button8.frame = CGRectMake(86, 256, 70, 70);
        button8.backgroundColor = [UIColor redColor];
        [button8 setTitle:@"8" forState:UIControlStateNormal];
        button8.showsTouchWhenHighlighted = YES;
        button8.adjustsImageWhenHighlighted = NO;
    
    UIButton *button9 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        button9.frame = CGRectMake(164, 256, 70, 70);
        button9.backgroundColor = [UIColor redColor];
        [button9 setTitle:@"9" forState:UIControlStateNormal];
        button9.showsTouchWhenHighlighted = YES;
        button9.adjustsImageWhenHighlighted = NO;
    
    UIButton *button0 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        button0.frame = CGRectMake(8, 334, 70, 70);
        button0.backgroundColor = [UIColor redColor];
        [button0 setTitle:@"0" forState:UIControlStateNormal];
        button0.showsTouchWhenHighlighted = YES;
        button0.adjustsImageWhenHighlighted = NO;
    
    UIButton *buttonAdd = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        buttonAdd.frame = CGRectMake(242, 100, 70, 70);
        buttonAdd.backgroundColor = [UIColor redColor];
        [buttonAdd setTitle:@"+" forState:UIControlStateNormal];
        buttonAdd.showsTouchWhenHighlighted = YES;
        buttonAdd.adjustsImageWhenHighlighted = NO;

    UIButton *buttonSub = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        buttonSub.frame = CGRectMake(242, 178, 70, 70);
        buttonSub.backgroundColor = [UIColor redColor];
        [buttonSub setTitle:@"-" forState:UIControlStateNormal];
        buttonSub.showsTouchWhenHighlighted = YES;
        buttonSub.adjustsImageWhenHighlighted = NO;

    UIButton *buttonClear = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        buttonClear.frame = CGRectMake(242, 256, 70, 148);
        buttonClear.backgroundColor = [UIColor redColor];
        [buttonClear setTitle:@"C" forState:UIControlStateNormal];
        buttonClear.showsTouchWhenHighlighted = YES;
        buttonClear.adjustsImageWhenHighlighted = NO;

    UIButton *buttonResult = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        buttonResult.frame = CGRectMake(86, 334, 148, 70);
        buttonResult.backgroundColor = [UIColor redColor];
        [buttonResult setTitle:@"=" forState:UIControlStateNormal];
        buttonResult.showsTouchWhenHighlighted = YES;
        buttonResult.adjustsImageWhenHighlighted = NO;
    
    
        [self.view addSubview:button1];
        [self.view addSubview:button2];
        [self.view addSubview:button3];
        [self.view addSubview:button4];
        [self.view addSubview:button5];
        [self.view addSubview:button6];
        [self.view addSubview:button7];
        [self.view addSubview:button8];
        [self.view addSubview:button9];
        [self.view addSubview:button0];
        [self.view addSubview:buttonAdd];
        [self.view addSubview:buttonSub];
        [self.view addSubview:buttonClear];
        [self.view addSubview:buttonResult];
        [self.view addSubview:calResult];

}




//- (IBAction)calNumButton:(id)sender {
//    UIButton* calTypeBtn = sender;
//    NSString *name= [calTypeBtn titleForState:UIControlStateNormal];
//    //    NSLog(@"name=%@",name);
//    [regString appendString:name];
//    self.resultField.text=regString;
//}
//
//- (IBAction)calTypeButton:(id)sender {
//    UIButton* btn = sender;
//    NSString *name= [btn titleForState:UIControlStateNormal];
//    if([name isEqualToString:@"+"])
//        typeOfCal = ADD;
//    if([name isEqualToString:@"-"])
//        typeOfCal = SUB;
//    result=[self.resultField.text intValue];
//    [regString setString:@""];
//    
//}
//
//-(void)ResultOfCal
//{
//    second=[regString intValue];
//    switch (typeOfCal) {
//        case ADD:
//            result+=second;
//            break;
//        case SUB:
//            result-=second;
//            break;
//        default:
//            break;
//    }
//    
//}
//
//- (IBAction)resultButton:(id)sender {
//    [self ResultOfCal];
//    self.resultField.text=[NSString stringWithFormat:@"%d",result];
//    [regString setString:@""];
//    
//}
//
//- (IBAction)clearButton:(id)sender {
//    [regString setString:@""];
////  别忘了把result设为0，否则点击等号会出错
//    result = 0;
//    self.resultField.text=@"";
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





















@end
