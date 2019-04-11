//
//  MapKitViewController.swift
//  Custom-Alert
//
//  Created by 윤성호 on 11/04/2019.
//  Copyright © 2019 윤성호. All rights reserved.
//

import UIKit
import MapKit

class MapKitViewController: UIViewController {
    
    override func viewDidLoad() {
        
        // 뷰 컨트롤러에 맵킨 뷰를 추가
        let mapkitView = MKMapView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        self.view = mapkitView
        self.preferredContentSize.height = 200
        
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
    }
}
