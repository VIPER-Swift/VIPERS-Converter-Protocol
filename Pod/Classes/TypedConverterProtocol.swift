//
//  TypedConverterProtocol.swift
//  Pods
//
//  Created by Jan Bartel on 06.12.16.
//
//

import Foundation

public enum TypedConverterErrorType : Error{
    case cannotConvert(input: Any?, to: Any.Type)
}

/**
 * A TypedConverter is a converter responsible for converting objects of a specific
 * type to an other specfied type. A typed converter will often convert only a subset
 * of objects of an specific type, so be shure to test for isResponible before using it!
 **/
public protocol TypedConverterProtocol : ConverterProtocol{
    
    associatedtype ConverterOutputType
    associatedtype ConverterInputType
    
    func isResponibleForOutputType<T>(_ type:T.Type) -> Bool
    
    func isResponsible(_ input:ConverterInputType) throws -> Bool
    func convert(_ input: ConverterInputType) throws -> ConverterOutputType
}

extension TypedConverterProtocol{
    
    public func isResponibleForOutputType<T>(_ type:T.Type) -> Bool{
        return T.self is ConverterOutputType.Type
    }
    
    public func isResponsible(_ input: Any) throws -> Bool {
        
        if let inputValue = input as? ConverterInputType{
            return try self.isResponsible(inputValue)
        }else{
            return false
        }
        
    }
    
    public func convert(_ input: Any) throws -> Any{
        
        if let inputValue = input as? ConverterInputType{
            let output : ConverterOutputType = try self.convert(input as! ConverterInputType)
            return output
        }else{
            throw TypedConverterErrorType.cannotConvert(input: input, to: ConverterInputType.self)
        }
        
    }
}
