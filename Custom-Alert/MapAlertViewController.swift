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
        
        // Map Alert 버튼
        let btnMap = UIButton(type: .system)
        btnMap.frame = CGRect(x: 0, y: 150, width: 100, height: 30)
        btnMap.center.x = self.view.frame.width / 2
        btnMap.setTitle("Map Alert", for: .normal)
        
        // map Alert 버튼에 액션 메소드 연결
        btnMap.addTarget(self, action: #selector(mapAlert(_:)), for: .touchUpInside)
        
        // image Alert 버튼
        let btnImage = UIButton(type: .system)
        btnImage.frame = CGRect(x: 0, y: 200, width: 100, height: 30)
        btnImage.center.x = self.view.frame.width / 2
        btnImage.setTitle("Image Alert", for: .normal)
        
        // image Alert 버튼에 액션 메소드 연결
        btnImage.addTarget(self, action: #selector(imageAlert(_:)), for: .touchUpInside)
        
        // slider Alert 버튼
        let btnSlider = UIButton(type: .system)
        btnSlider.frame = CGRect(x: 0, y: 250, width: 100, height: 30)
        btnSlider.center.x = self.view.frame.width / 2
        btnSlider.setTitle("Slider Alert", for: .normal)
        
        // slider Alert 버튼에 액션 메소드 연결
        btnSlider.addTarget(self, action: #selector(sliderAlert(_:)), for: .touchUpInside)
        
        // view에 추가
        self.view.addSubview(btnMap)
        self.view.addSubview(btnImage)
        self.view.addSubview(btnSlider)
        
    }
    
    // Map Alert 버튼 클릭시 호출 될 메소드
    @objc func mapAlert(_ sender : Any){
        
        // 알림창
        let alert = UIAlertController(title: nil, message: "여기가 맞습니까?", preferredStyle: .alert)
        
        // 버튼
        let ok = UIAlertAction(title: "OK", style: .default)
        let cancel = UIAlertAction(title: "Cancel", style: .cancel)
        
        // 콘텐츠 뷰 컨트롤러
        let contentVC = MapKitViewController()
        
        // 알림창에 추가
        alert.addAction(ok)
        alert.addAction(cancel)
        alert.setValue(contentVC, forKey: "contentViewController")
        
        // 알림창 띄우기
        self.present(alert, animated: false)
    }
    
    // image Alert 버튼 클릭시 호출 될 메소드
    @objc func imageAlert(_ sender : Any) {
        
        // 알림창
        let alert = UIAlertController(title: nil, message: "이번 글의 평점은 다음과 같습니다", preferredStyle: .alert)
        
        // 알림창의 버튼
        let ok = UIAlertAction(title: "OK", style: .default)
        let cancel = UIAlertAction(title: "Cancel", style: .cancel)
        
        // 콘텐츠 뷰 컨트롤러
        let contentVC = ImageViewController()
        
        // 버튼을 알림창에 추가
        alert.addAction(ok)
        alert.addAction(cancel)
        alert.setValue(contentVC, forKey: "contentViewController")
        
        // 화면에 표시
        self.present(alert, animated: false)
    }
    
    @objc func sliderAlert(_ sender : Any){
        
        // 알림창
        let alert = UIAlertController(title: nil, message: "이번 글의 평점은 다음과 같습니다", preferredStyle: .alert)
        
        // 콘텐츠 뷰 컨트롤러
        let contentVC = ControlViewController()
        
        // 알림창의 버튼
        let ok = UIAlertAction(title: "OK", style: .default){
            (_) in
            print("slider Value : \(contentVC.sliderValue)")
        }
        let cancel = UIAlertAction(title: "Cancel", style: .cancel)
        
        // 버튼을 알림창에 추가
        alert.addAction(ok)
        alert.addAction(cancel)
        alert.setValue(contentVC, forKey: "contentViewController")
        
        // 화면에 표시
        self.present(alert, animated: false)
    }
    
    
}
