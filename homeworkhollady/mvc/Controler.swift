//
//  Controler.swift
//  homeworkhollady
//
//  Created by Mac on 28/12/22.
//

import Foundation
class AutoController{
    private weak var view:ViewController?
    private var model:AutoModel!
    init(view: ViewController) {
        self.view = view
        self.model = AutoModel(controller: self)
        
    }
    func getuserInfo (username:String,pass:String) -> Bool {
        
        let authAnsver = model.chekpic(username: username, pass: pass)
        if authAnsver == true{


                        return true
                    }else{
                        return false
                    }
                }
            }
            


