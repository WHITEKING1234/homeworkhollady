//
//  ViewController.swift
//  homeworkhollady
//
//  Created by Mac on 28/12/22.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    private var controler:AutoController!
    var username = UITextField()
    var pass = UITextField()
    var button = UIButton(type: .system)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        controler = AutoController(view: self)
        // Do any additional setup after loading the view.
        username1()
    }
    func username1(){
        username.layer.cornerRadius = 20
        username.layer.borderWidth = 2
        username.backgroundColor = .white
        username.layer.borderColor = UIColor.systemPink.cgColor
        username.placeholder = "User"
        
        
        view.backgroundColor = .black
        view.addSubview(username)
        username.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(view.snp.top).offset(200)
            make.width.equalTo(view.frame.width - 30)
            make.height.equalTo(40)
        }
        view.addSubview(pass)
        pass.layer.cornerRadius = 20
        pass.layer.borderWidth = 2
        pass.backgroundColor = .white
        pass.layer.borderColor = UIColor.systemPink.cgColor
        pass.placeholder = "Passworld"
        pass.isSecureTextEntry = true
        pass.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(username.snp.bottom   ).offset(50)
            make.width.equalTo(view.frame.width - 30)
            make.height.equalTo(40)
        }
        
        view.addSubview(button)
        button.layer.cornerRadius = 30
        button.backgroundColor = UIColor.systemPink
        button.layer.borderWidth = 3
        button.layer.borderColor = UIColor.white.cgColor
        button.setTitle("set pass", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(button12), for: .touchUpInside)
        button.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(pass.snp.bottom).offset(50)
            make.width.equalTo(150)
            make.height.equalTo(40)
            
        }
    }
    @objc func button12(){
        let authAnsver =  controler?.getuserInfo(username: username.text!, pass: pass.text!)
        if authAnsver == true{
            navigationController!.pushViewController(View2(), animated: true)
        }else{
            print("No")
        }
    }
    @IBAction func button (_ sender: Any) {
            let bb = UIAlertController(title: "Oшибка", message: "Данные ввидены не правельно попробуйте еще раз", preferredStyle: .alert)
            let button2 = UIAlertAction(title: "OK", style:.cancel)
            bb.addAction(button2)
                          present(bb, animated: true, completion: nil)
            

            
        }
//                    var isFounded: Bool = false
//
//        let currentUser = User(username: username.text!, pass: pass.text!)
//
//                    for user in user {
//                        if currentUser.username == user.username && currentUser.pass == user.pass{
//                            isFounded = true
//                            break
//                           }else{
//                               isFounded = false
//                        }
//                    }
//                    if isFounded == true {
//                        print("Вход")
//                    }else{
//                        print("Неверные данные")
                    
            }
        

    

