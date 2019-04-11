//
//  ListViewController.swift
//  Custom-Alert
//
//  Created by 윤성호 on 11/04/2019.
//  Copyright © 2019 윤성호. All rights reserved.
//

import UIKit

class ListViewController: UITableViewController {
    
    var delegate: MapAlertViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.preferredContentSize.height = 220
    }
    
    // 셀의 갯수 설정
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    // 셀의 구성
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.textLabel?.text = "\(indexPath.row) 번째 옵션입니다."
        cell.textLabel?.font = UIFont.systemFont(ofSize: 13)
        
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.delegate?.didSelectRowAt(indexPath: indexPath)
    }
}
