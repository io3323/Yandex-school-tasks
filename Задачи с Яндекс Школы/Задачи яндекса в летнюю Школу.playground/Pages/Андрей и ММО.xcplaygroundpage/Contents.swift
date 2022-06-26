import Foundation
var n = 5
var dataInformationUser = "0 1 3 4 -5"
//Блок ввода для компилятора
//var n = Int(readLine()!)!
//var dataInformationUser = readLine()!
var chetnoct = false
var masTestUser = dataInformationUser.components(separatedBy: " ")
var masTest = masTestUser.map{Int($0)!}
if (n % 2) == 0{
    chetnoct = true
}else{
    chetnoct = false
}
var plusMasIndex = false
if (masTest.filter{$0 < 0}.isEmpty) && (chetnoct == true) {
    print(masTest.min()!)
} else if (masTest.filter{$0 > 0}.isEmpty) && (chetnoct == true){
    print(masTest.min()!)
} else if (masTest.filter{$0 > 0}.isEmpty) && (chetnoct == false){
    print(masTest.max()!)
}else{
    print(masTest.min()!)
}



