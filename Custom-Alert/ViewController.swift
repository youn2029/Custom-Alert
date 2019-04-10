//
//  ViewController.swift
//  Custom-Alert
//
//  Created by 윤성호 on 10/04/2019.
//  Copyright © 2019 윤성호. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // button
        let btn = UIButton(type: .system)
        btn.frame = CGRect(x: 0, y: 100, width: 100, height: 30)
        btn.center.x = self.view.frame.width / 2
        btn.setTitle("기본 알림창", for: .normal)
        
        // view에 버튼 추가
        self.view.addSubview(btn)
        
        // button에 액션 메소드 연결
        btn.addTarget(self, action: #selector(defaultAlert(_:)), for: .touchUpInside)
        
    }
    
    // 버튼에 클릭 메소드
    @objc func defaultAlert(_ sender : Any) {
        
        // 알림창
        let alert = UIAlertController(title: nil, message: "메세지", preferredStyle: .actionSheet)
        
        // 알림창에 들어갈 콘텐츠 뷰 컨트롤러
        let content = UIViewController()
        content.view.backgroundColor = .red
        
        // 알림 액션
        let ok = UIAlertAction(title: "OK", style: .default)
        let cancel = UIAlertAction(title: "Cancel", style: .cancel)
        
        // 알림창에 콘텐츠 뷰 컨트롤러 추가
        alert.setValue(content, forKey: "contentViewController")
        
        alert.addAction(ok)
        alert.addAction(cancel)
        
        self.present(alert, animated: false)
    }


}

