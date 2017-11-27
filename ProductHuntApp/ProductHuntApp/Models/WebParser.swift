//
//  WebParser.swift
//  
//
//  Created by Никита Скрынников on 27.11.17.
//

import Foundation
import UIKit
import SwiftyJSON

let access_token = "591f99547f569b05ba7d8777e2e0824eea16c440292cce1f8dfb3952cc9937ff"

import Alamofire
class WebParser {
    static var instance = WebParser()
    private init(){}
    var data : [CellData] = [CellData()]
    
    func getCount() -> Int {
        return self.data.count
    }
    var currentTopic: String = "tech"
    func loadData(){
        let url = "https://api.producthunt.com/v1/categories/\(currentTopic)/posts?access_token=\(access_token)"
        Alamofire.request(url).responseJSON {
            response in
            print(response.data)

            
            

            }
        }
    
    func getData(at indexPath: IndexPath) -> CellData{
        if self.data.count > 0 {
            if indexPath.row >= 0 && indexPath.row < self.getCount() {
                return data[indexPath.row]
            }
        }
        return CellData()
    }
    
}
