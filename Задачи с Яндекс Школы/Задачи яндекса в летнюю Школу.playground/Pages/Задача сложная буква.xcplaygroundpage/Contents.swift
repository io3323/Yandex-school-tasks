import Foundation
var n = 3
var stringUser = "abc"
var spedTupUser = "10 11 12"
//var n = Int(readLine()!)!
//var stringUser = readLine()!
//var spedTupUser = readLine()!
var newStringUser = stringUser.map{ String($0)}
var masSpeedTupUser = spedTupUser.components(separatedBy: " ")
var masSpeed = masSpeedTupUser.map{Int($0)!}
var firstmasElement = 0
var newMas = [Int]()
var maxElement = 0
var result = ""
for i in 0...n - 1{
    if i == 0{
        newMas.append(masSpeed[i])
        firstmasElement = masSpeed[i]
        if firstmasElement >= maxElement{
            maxElement = firstmasElement
            result = newStringUser[i]
        }
    }else{
        newMas.append(masSpeed[i] - firstmasElement)
        firstmasElement = masSpeed[i]
        if newMas[i] >= maxElement{
            maxElement = newMas[i]
            result = newStringUser[i]
        }
    }
}
print(result)


