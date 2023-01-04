//
//  Network.swift
//  homeworkhollady
//
//  Created by Mac on 29/12/22.
//

import Foundation
class Network{
    func getbeer(comletion:@escaping ([Beer]) -> ()){
        let url = URL(string: "https://api.punkapi.com/v2/beers")
        URLSession.shared.dataTask(with: url!) {(data,response,error) in
            if error == nil && data != nil{
                
                do{
                    let beers = try JSONDecoder().decode([Beer].self ,from: data!)
                    comletion(beers)
                    DispatchQueue.main.self
//                    print(beers)
                    
                }catch{
                    print("error")
                }
            }
        }.resume()
    }
}

