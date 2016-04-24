//
//  ViewController.swift
//  KeyframeAnimation
//
//  Created by 黄海燕 on 16/4/24.
//  Copyright © 2016年 huanghy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //初始化一个数组，用来存放图片素材
        var images = [UIImage]()
        //创建一个循环，将导入的图片，依次存入数组中
        for(var i = 1;i <= 3; i += 1){
            images.append(UIImage(named: "\(i).jpg")!)
        }
        let imageView = UIImageView(frame:CGRectMake(0,60, 335, 253))
        //设置图像视图的动画图片属性
        imageView.animationImages = images
        imageView.animationDuration = 5
        //设置动画的循环次数，0表示无限循环播放
        imageView.animationRepeatCount = 0
        //开始帧动画的播放
        imageView.startAnimating()
        self.view.addSubview(imageView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

