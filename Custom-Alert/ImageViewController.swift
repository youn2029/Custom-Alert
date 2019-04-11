//
//  ImageViewController.swift
//  Custom-Alert
//
//  Created by 윤성호 on 11/04/2019.
//  Copyright © 2019 윤성호. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {
    
    override func viewDidLoad() {
        
        // 이미지와 이미지 뷰 객체 생성
        let icon = UIImage(named: "rating5")
        let iconV = UIImageView(image: icon)
        
        // 이미지 뷰 객체의 크기와 위치 지정
        iconV.frame = CGRect(x: 0, y: 0, width: (icon?.size.width)!, height: (icon?.size.height)!)
        
        // 루트 뷰에 이미지 뷰 추가
        self.view.addSubview(iconV)
        
        // 외부에서 참조할 뷰 컨트롤러 사이즈를 이미지 크기와 동일하게 설정
        self.preferredContentSize = CGSize(width: (icon?.size.width)!, height: (icon?.size.height)!+10)
        
    }
}
