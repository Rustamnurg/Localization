//
//  CreateData.swift
//  Localization
//
//  Created by Rustam N on 15.04.17.
//  Copyright © 2017 Test. All rights reserved.
//

import UIKit

class CreateData: NSObject {
    class func getArrWithTitle() -> [[String]] {
        let firstArr = ["dateoOfBirth", "homeTown", "placeOfStudy", "languages"]
        let secondArr = ["phone", "city", "vkLink"]
        let arr = [firstArr, secondArr]
        return arr
    }

    class func getBaseInfoArr()-> [String] {
        return ["fullName", "status", "briefInformation", "basicInformation", "contacts"]
    }
 
    
}
