//
//  ViewController.swift
//  动画
//
//  Created by 朱星 on 16/9/9.
//  Copyright © 2016年 zhuxing. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    let subView = UIView()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //实现简单的动画，一般使用UIKit框架下的动画基于uiwiew层实现。复杂的动画都是用的CoreAnimation框架，基于CALayer层实现
        
        
        subView.frame = CGRectMake(10, 10, 50, 50)
        subView.backgroundColor = UIColor.redColor()
        self.view.addSubview(subView)
        
        
        
        
        
        
    }

    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       // 使用代码块
//        
//        UIView.animateWithDuration(3) { () -> Void in
//            self.subView.frame = CGRectMake(10, 10, 100, 100)
//            self.subView.alpha = 0.5
//            
//            self.subView.backgroundColor = UIColor.grayColor()
//        }
        
        UIView.animateKeyframesWithDuration(3, delay: 1, options: UIViewKeyframeAnimationOptions.Repeat, animations: { () -> Void in
            self.subView.frame = CGRectMake(10, 10, 100, 100)
            self.subView.alpha = 0.5
            
            self.subView.backgroundColor = UIColor.grayColor()
            }) { (isFinish) -> Void in
                UIView.animateWithDuration(3, animations: { () -> Void in
                    self.subView.frame = CGRectMake(10, 10, 50, 50)
                    self.subView.alpha = 1
                    
                    self.subView.backgroundColor = UIColor.yellowColor()
                })
        }
        
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

