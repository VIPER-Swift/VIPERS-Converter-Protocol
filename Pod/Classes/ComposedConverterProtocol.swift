//
//  ComposedConverterProtocol.swift
//  Pods
//
//  Created by Jan Bartel on 06.12.16.
//
//

import Foundation

/**
 * A converter containing other converters.
 * The last added converter is used first [Stack],
 * the first responsible subconverter is used
 */
public protocol ComposedConverterProtocol : ConverterProtocol{
    func addConverter(_ converter: ConverterProtocol)
}

