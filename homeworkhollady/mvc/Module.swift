//
//  Module.swift
//  homeworkhollady
//
//  Created by Mac on 28/12/22.
//

import Foundation
class AutoModel{
    var user12:[User] = []
    func lounduser(){
        user12.append(User(username: "Nadik", pass: "3131"))
        user12.append(User(username: "Ivan", pass: "1234"))
        user12.append(User(username: "padq", pass: "32"))
        
    }
    
    
    private weak var controller:AutoController?
    
    
    
    
    
    
    
    
    
    
    
    init(controller: AutoController) {
        self.controller = controller
    }
    func chekpic(username:String,pass:String) -> Bool{
        lounduser()
        var isFounded: Bool = false
        //
        let currentUser = User(username: username, pass: pass)
        
        for user in user12{
            if currentUser.username == user.username && currentUser.pass == user.pass{
                isFounded = true
                break
            }else{
                isFounded = false
            }
        }
        if isFounded == true {
            return true
        }else{
            return false
            
        }
    }
}
