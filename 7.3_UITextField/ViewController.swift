//
//  ViewController.swift
//  7.3_UITextField
//
//  Created by 王卓 on 15/4/14.
//  Copyright (c) 2015年 王卓. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var textField=UITextField(frame:CGRectMake(10, 160, 200, 30))
        textField.borderStyle=UITextBorderStyle.RoundedRect
        self.view.addSubview(textField)
        
        textField.placeholder="please input your name"
        //textField.text="None"
        textField.returnKeyType=UIReturnKeyType.Done
        textField.delegate=self
        
        func textFieldShouldReturn(textField:UITextField) ->Bool
        {
            textField.resignFirstResponder()
            println(textField.text)
            return true
        }
        
        textField.clearButtonMode=UITextFieldViewMode.WhileEditing
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

