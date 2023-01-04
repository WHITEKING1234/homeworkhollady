//
//  2 vie.swift
//  homeworkhollady
//
//  Created by Mac on 28/12/22.
//

import Foundation
import UIKit
import SnapKit
class View2:UIViewController{
    var Beer = UITableView()
    var network = Network()
    var username23 = UILabel()
    var beer2 :[Beer] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        Beer.register(UITableViewCell.self, forCellReuseIdentifier: "let_cell")
        Beer.dataSource = self
        Beer.delegate = self
       
        ad22()
        network.getbeer { berrlist in
                self.beer2 = berrlist
            self.Beer.reloadData()
            
        }
        
    }
    func ad22(){
        view.addSubview(Beer)
        Beer.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview()
            make.bottom.equalToSuperview()
            make.left.equalToSuperview()
            make.right.equalToSuperview()
        }
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
    

extension View2:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        beer2.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "let_cell", for: indexPath)
        cell.textLabel?.text = beer2[indexPath.row].name
        cell.detailTextLabel?.text =  beer2[indexPath.row].dis
        return cell
    }
}




extension View2: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let beerDetailVC = BeerDescriptionVC()
        
        beerDetailVC.beerNameLabel.text = beer2[indexPath.row].name
        beerDetailVC.descriptionNameLabel.text = beer2[indexPath.row].dis
        
        navigationController?.pushViewController(beerDetailVC, animated: true)
    }
    
    
    
    
    
    
    
}
