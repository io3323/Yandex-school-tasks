import Cocoa
import Foundation
var masOne = [Int]()
var masTwo = [Int]()
func dataOfUser(){
    var data = "223321"
    workWithDataUser(data: data)
    
}
func workWithDataUser(data:String) -> [Int]{
    var mas = [Int]()
    for i in data{
        var strData = String(i)
        var intData = Int(strData)!
        mas.append(intData)
        
    }
    print(mas)
    splitArray(mas: mas)
   return mas
}

func splitArray(mas:[Int]) -> (masOne:[Int], masTwo:[Int]){
    var masOne = [Int]()
    var masTwo = [Int]()
    var splitMas = mas.split()
    masOne = splitMas.left
    print(masOne)
    masTwo = splitMas.right
    print(masTwo)
    var sumMusOne = summElement(mas: masOne)
    var sumMusTwo = summElement(mas: masTwo)
    var sravnenia = sravnenia(sravOne: sumMusOne, sravTwo: sumMusTwo)
    getNewElement(masOne: masOne, masTwo: masTwo, sravnenia: sravnenia, sumMusOne: sumMusOne, sumMusTwo: sumMusTwo)
    return (masOne, masTwo)
    
    
}
func summElement(mas:[Int]) -> Int{
    var summ = 0
    for i in mas{
        summ = i + summ
    }
    
    return summ
}
func sravnenia(sravOne:Int, sravTwo:Int) -> Bool{
    var result:Bool = true
    if sravOne == sravTwo {
        result = true
    }else{
        result = false
    }
    return result
}
func  getNewElement(masOne:[Int], masTwo:[Int],sravnenia:Bool,sumMusOne:Int,sumMusTwo:Int) -> Int{
    var happyNumber = 0
    switch sravnenia {
    case true:
        print("Вам повезло у вас счастливое число")
    case  false:
        if sumMusOne > sumMusTwo{
            podborNumber(masOne: masOne, musTwo: masTwo,sumMus: sumMusOne)
        }else{
            
        }
        default:
        print("no  date")
        }
 return happyNumber
}

func podborNumber(masOne:[Int],musTwo:[Int],sumMus:Int) -> String{
    
    var itogSumm = 0
    var itogString = ""
    while itogSumm !=  sumMus{
        var convertMasElement = converMus(mas: masTwo)
        convertMasElement += 1
        var itogmas = workWithSecondMas(convertElement: convertMasElement)
        
        
        
        
    }
    
    return itogString
}
func converMus(mas:[Int]) -> Int{
    var newElement = mas.map{"\($0)"}.reduce(""){$0+$1}
    var newElementInt = Int(newElement)!
    return newElementInt
}
func  workWithSecondMas(convertElement:Int) -> [Int]{
    var masConvertElement = [Int]()
    var stringConvertElement = String(convertElement)
    for i in stringConvertElement{
        var strData = String(i)
        var intData = Int(strData)!
        masConvertElement.append(intData)
        
    }
    return masConvertElement
}
extension Array {
    func split() -> (left: [Element], right: [Element]) {
        let ct = self.count
        let half = ct / 2
        let leftSplit = self[0 ..< half]
        let rightSplit = self[half ..< ct]
        return (left: Array(leftSplit), right: Array(rightSplit))
    }
}

dataOfUser()



