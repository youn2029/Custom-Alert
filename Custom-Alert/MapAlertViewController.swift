//
//  MapAlertViewController.swift
//  Custom-Alert
//
//  Created by 윤성호 on 10/04/2019.
//  Copyright © 2019 윤성호. All rights reserved.
//

import UIKit

class MapAlertViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 버튼
        let btnAlert = UIButton(type: .system)
        btnAlert.frame = CGRect(x: 0, y: 150, width: 100, height: 30)
        btnAlert.center.x = self.view.frame.width / 2
        btnAlert.setTitle("Map Alert", for: .normal)
        
        // 버튼에 액션 메소드 연결
        btnAlert.addTarget(self, action: #selector(mapAlert(_:)), for: .touchUpInside)
        
        // view에 추가
        self.view.addSubview(btnAlert)
        
    }
    
    // 버튼 클릭시 호출 될 메소드
    @objc func mapAlert(_ sender : Any){
        
        // 알림창
        let alert = UIAlertController(title: nil, message: "여기가 맞습니까?", preferredStyle: .alert)
        
        // 버튼
        let ok = UIAlertAction(title: "OK", style: .default)
        let cancel = UIAlertAction(title: "Cancel", style: .cancel)
        
        // 콘텐츠 뷰 컨트롤러
        let contentVC = MapKitViewController()
        
        // 알림창에 추가
        alert.setValue(contentVC, forKey: "contentViewController")
        alert.addAction(ok)
        alert.addAction(cancel)
        
        // 알림창 띄우기
        self.present(alert, animated: false)
    }
    
    
}
