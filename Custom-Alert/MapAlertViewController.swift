//
//  MapAlertViewController.swift
//  Custom-Alert
//
//  Created by 윤성호 on 10/04/2019.
//  Copyright © 2019 윤성호. All rights reserved.
//

import UIKit
import MapKit

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
        
        //////////////////////////////////////////////////////////////////////////////////////
        
        // 콘텐츠 뷰
        let contentVC = UIViewController()
        
        // 뷰 컨트롤러에 맵킨 뷰를 추가
        let mapkitView = MKMapView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        contentVC.view = mapkitView
        
        // 해당 위치 (위도/경도로 지정)
        let pos = CLLocationCoordinate2D(latitude: 37.514322, longitude: 126.894623)
        
        // 지도에서 보여줄 넓이 (축척) : 숫자가 작을수록 좁은 범위를 확대시켜서 보여줌
        let span = MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)
        
        // 지도 영역을 정의
        let region = MKCoordinateRegion(center: pos, span: span)
        
        // 지도 뷰에 표시
        mapkitView.region = region
        mapkitView.regionThatFits(region)
        
        // 해당 위치를 지정할 핀
        let point = MKPointAnnotation()
        point.coordinate = pos
        point.title = "여기!!"
        point.subtitle = "맞아요?"
        mapkitView.addAnnotation(point)
        
        //////////////////////////////////////////////////////////////////////////////////////
        
        // 버튼
        let ok = UIAlertAction(title: "OK", style: .default)
        let cancel = UIAlertAction(title: "Cancel", style: .cancel)
        
        // 알림창에 추가
        alert.setValue(contentVC, forKey: "contentViewController")
        alert.addAction(ok)
        alert.addAction(cancel)
        
        // 알림창 띄우기
        self.present(alert, animated: false)
    }
    
    
}
