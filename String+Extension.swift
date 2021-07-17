//
//  String+Extension.swift
//  BRYG
//
//  Created by Mavani on 02/05/21.
//

import Foundation

extension String
{
    static func BaseURL(_ path:String) -> String
    {
        return "https://brygdev.dk/api/v1/admin/\(path)"
    }
    
//    static func GetImageURL(_ path:String) -> String
//    {
//        return "https://ratemeon.com/assets/images/\(path)"
//    }
    
    func base64Encoded() -> String? {
        return data(using: .utf8)?.base64EncodedString()
    }
}
