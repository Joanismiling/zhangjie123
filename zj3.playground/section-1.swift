// Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"


enum Barcode{
    case A(Int, Int, Int)
    case QRCode(String)
}
var productBarcode = Barcode.A(8, 85909_51226, 3)
    productBarcode = .QRCode("ABCDEFGHIJKLMNOP")
    /*productBrcode重新被赋值为字符串型*/
switch productBarcode {
    case let .A(numberSystem, identifier, check):
        println("A with value of \(numberSystem), \(identifier), \(check).")
    case let .QRCode(productCode):
        println("QR code with value of \(productCode).")
}