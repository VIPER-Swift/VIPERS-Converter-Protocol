//
//  ConverterProtocol.swift
//  Pods
//
//  Created by Jan Bartel on 06.12.16.
//
//

import Foundation

/**
 * A converter is an object responsible to convert one element to an other element
 *
 **/
public protocol ConverterProtocol{
    func isResponibleForOutputType<T>(_ type:T.Type) -> Bool
    func isResponsible(_ input:Any) throws -> Bool
    func convert(_ input: Any) throws -> Any
}
