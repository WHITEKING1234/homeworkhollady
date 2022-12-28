//
//  2 vie.swift
//  homeworkhollady
//
//  Created by Mac on 28/12/22.
//

import Foundation
import UIKit
class View2:UIViewController{
    
    var username23 = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
        ad22()
    }
    func ad22(){
        username23.text = "User"
        username23.font = UIFont.systemFont(ofSize: 30,weight: .bold)
        view.backgroundColor = .white
        view.addSubview(username23)
        username23.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(view.snp.top).offset(100)
            make.width.equalTo(view.frame.width - 30)
            make.height.equalTo(40)
        }
    }
}
