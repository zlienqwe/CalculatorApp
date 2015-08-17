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
    regString=[NSMutableString stringWithCapacity:10];
    self.resultField.text=@"0";
}





- (IBAction)calTypeButton:(id)sender {
    UIButton* calTypeBtn = sender;
    NSString *name= [calTypeBtn titleForState:UIControlStateNormal];
    //    NSLog(@"name=%@",name);
    [regString appendString:name];
    self.resultField.text=regString;
}

- (IBAction)cal:(id)sender {
    UIButton* btn = sender;
    NSString *name= [btn titleForState:UIControlStateNormal];
    if([name isEqualToString:@"+"])
        typeOfCal = ADD;
    if([name isEqualToString:@"-"])
        typeOfCal = SUB;
    result=[self.resultField.text intValue];
    [regString setString:@""];
    
}

-(void)ResultOfCal
{
    second=[regString intValue];
    switch (typeOfCal) {
        case ADD:
            result+=second;
            break;
        case SUB:
            result-=second;
            break;
        default:
            break;
    }
    
}

- (IBAction)resultButton:(id)sender {
    [self ResultOfCal];
    self.resultField.text=[NSString stringWithFormat:@"%d",result];
    [regString setString:@""];
    
}

- (IBAction)clearButton:(id)sender {
    [regString setString:@""];
//  别忘了把result设为0，否则点击等号会出错
    result = 0;
    self.resultField.text=@"0";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





















@end
