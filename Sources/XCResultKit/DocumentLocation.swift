//
//  File.swift
//  
//
//  Created by David House on 6/30/19.
//
//- DocumentLocation
//    * Kind: object
//* Properties:
//+ url: String
//+ concreteTypeName: String

import Foundation

public struct DocumentLocation: XCResultObject {
    public let url: XCResultString?
    public let concreteTypeName: XCResultString?
    
    public init?(_ json: [String : AnyObject]) {
        url = parse(element: "url", from: json)
        concreteTypeName = parse(element: "concreteTypeName", from: json)
    }
}