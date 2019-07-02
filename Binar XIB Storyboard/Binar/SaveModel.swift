//
//  SaveModel.swift
//  Binar
//
//  Created by user149752 on 6/28/19.
//  Copyright © 2019 user149752. All rights reserved.
//

import UIKit

class SaveModel: NSObject, NSCoding {
    var title: String
    var isAvailable: Bool
    var number: Int
    
    //Memberwise initializer
    init(title: String, number: Int, isAvailable: Bool) {
        self.title = title
        self.number = number
        self.isAvailable = isAvailable
    }
    
    // MARK: NSCoding
    
    required convenience init?(coder decoder: NSCoder) {
        guard let title = decoder.decodeObject(forKey: "title") as? String
            else { return nil }
        self.init(
            title: title,
            number: decoder.decodeInteger(forKey: "number"),
            isAvailable: decoder.decodeBool(forKey: "isAvailable")
        )
    }
    
    func encode(with coder: NSCoder) {
        coder.encode(self.title, forKey: "title")
        coder.encodeCInt(Int32(self.number), forKey: "pageCount")
        coder.encode(self.isAvailable, forKey: "available")
    }
}
