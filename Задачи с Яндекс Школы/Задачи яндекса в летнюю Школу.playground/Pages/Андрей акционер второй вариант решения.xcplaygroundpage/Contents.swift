import Foundation

var n = 10
var lis = "1 2 3 4 5 1 1 1 4 5"
//Блок для ввода при помощи компилятора

//var n = Int(readLine()!)!
//var lis = readLine()!
var stringMas = lis.components(separatedBy: " ")
var masString  = stringMas.map{Int($0)!}
var k = 0
var cloud = [Int]()
for  i in 0..<n - 1{
    cloud.append(max((masString[i + 1] - masString[i]), 0))
}
for i in cloud{
    k = i + k
}
print(k)

