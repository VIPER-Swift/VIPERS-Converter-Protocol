import UIKit
import XCTest
import VIPERS_Converter_Protocol

class DateToStringConverter : TypedConverterProtocol{

    typealias ConverterOutputType = String
    typealias ConverterInputType = Date
    
    func isResponsible(_ input:Date) throws -> Bool{
        return true
    }
    
    func convert(_ input: Date) throws -> String{
        let formatter = DateFormatter()
        
        return formatter.string(from: input)
    }

}



class TypedConverterTests: XCTestCase {
    
    func testIsNotResponsibleForWrongOutputType() {
        
        let converter = DateToStringConverter()
        XCTAssertFalse(converter.isResponibleForOutputType(UIViewController.self))
        
    }
    
    func testIsResponibleForCorrectOutputType(){
        let converter = DateToStringConverter()
        XCTAssertTrue(converter.isResponibleForOutputType(String.self))
    }
    
    func testIsNotReponsibleForWrongInput(){
        let converter = DateToStringConverter()
        do{
            let responsible = try converter.isResponsible(UIViewController())
            XCTAssertFalse(responsible)
        }catch _{
            XCTFail("Should not throw an error")
        }
    }
    
    func testIsResponsibleForCorrectInput(){
        let converter = DateToStringConverter()
        do{
            let responsible = try converter.isResponsible(Date())
            XCTAssertTrue(responsible)
        }catch _{
            XCTFail("Should not throw an error")
        }
    }
    
    func testThrowsErrorForWrongInput(){
        let converter = DateToStringConverter()
        do{
            _ = try converter.convert(UIViewController())
            XCTFail("Should throw an TypedConverterErrorType.cannotConvert error")
        } catch TypedConverterErrorType.cannotConvert{
            XCTAssertTrue(true, "A TypedConverterErrorType.cannotConvert is expected")
        } catch _{
            XCTFail("A TypedConverterErrorType.cannotConvert is expected")
        }
    }
    
}
