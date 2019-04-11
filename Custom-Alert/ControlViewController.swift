//
//  ControlViewController.swift
//  Custom-Alert
//
//  Created by 윤성호 on 11/04/2019.
//  Copyright © 2019 윤성호. All rights reserved.
//

import UIKit

class ControlViewController: UIViewController {
    
    // 슬라이더 객체
    private let slider = UISlider()
    
    // 슬라이더 객체의 값을 읽어올 연산 프로퍼티
    var sliderValue: Float {
        return self.slider.value
    }
    
    override func viewDidLoad() {
        
        // 슬라이더의 크기와 위치 지정
        self.slider.frame = CGRect(x: 0, y: 0, width: 170, height: 30)
        
        // 슬라이더의 최소값, 최대값 설정
        self.slider.minimumValue = 0
        self.slider.maximumValue = 100
        
        // view에 추가
        self.view.addSubview(self.slider)
        
        // 콘텐츠 사이즈를 지정
        self.preferredContentSize = CGSize(width: self.slider.frame.width, height: self.slider.frame.height + 10)
        
    }
}
