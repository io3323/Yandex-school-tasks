import Foundation
//[1,2,3,4,5,1,2,3,4,5] =  7
//[1,2,3,4,5,5,4,3,2,1] = 5
//[1,2,3,2,2,2,4,5,6,3,10,5] = 9
//[10,9,8,7,6,5,4,3,2,1,2,3,4,5,6,7,8,9,10] = 9
//Блок для автоматического ввода условий через readLine
//var n = Int(readLine()!)!
//var astockYndex = readLine()!
//"2 3 4 5 1 2 3 4"
var n = 8
var astockYandex = "2 3 4 5 1 2 3 4"
var maxK = 0
var minK = 0
var maxValueProfit = 0
var k = 0
var astockYandexSeparete = astockYandex.components(separatedBy: " ")
var astockYandexMas = astockYandexSeparete.map{Int($0)!}
var maxValue = astockYandexMas.max()!
print(maxValue)
var min = astockYandexMas.min()!
print(min)
var maxIndexAstockYandexMas = [Int]()
var minIndexAstockYandexMas = [Int]()
var cloud  = [Int]()

for (number,i) in astockYandexMas.enumerated(){
    if i == maxValue{
       maxK += 1
        maxIndexAstockYandexMas.append(number)
    }
    if i == min{
        minK += 1
        minIndexAstockYandexMas.append(number)
    }
}
if ((maxIndexAstockYandexMas.count == 1) && (minIndexAstockYandexMas.count == 1)) || ((maxIndexAstockYandexMas.count == 1) && (minIndexAstockYandexMas.count != 1)) || ((maxIndexAstockYandexMas.count != 1) && (minIndexAstockYandexMas.count == 1)){
    if maxIndexAstockYandexMas[0] > minIndexAstockYandexMas[0]{
        maxValueProfit = maxValue - min
    }else{
        maxValueProfit = 0
    }
}else{
    for i in 0..<n - 1{
        cloud.append(max((astockYandexMas[i + 1] - astockYandexMas[i]), 0))
    }
    for i in cloud{
        maxValueProfit = i + maxValueProfit
    }
    
}

print(maxValueProfit)

