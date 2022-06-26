import Foundation
var n = 4
var dataUser = ""
var masStringUser:[String] = ["s.t.a.l.k.e.r.-@yandex.ru"," ","stalker-winer@yandex.com"," ","user@yandex.ru"," "," user@mail.yandex.ru"]
var masLogin = [String]()
var masDomen = [String]()
var countOfDat = [Int]()
var resultElement = 0
var kolEtr = 0
//Код для реализации в автокомпиляторах
//var masStringUser = [String]()
//var n = Int(readLine()!)!
/*for i in 0...n - 1 {
    
    dataUser = readLine()!
    masStringUser.append(dataUser)
    masStringUser.append(" ")
    
}*/
func replaceElement(in array: inout [String], element old: String, with new: String) {
  if let i = array.firstIndex(of: old) {
    array[i] = new
  }
}
for i in masStringUser{
    if i != " "{
        if var index = i.range(of: "@")?.lowerBound {
            var substring = i[..<index]
            var string = String(substring)
            string.removeAll{$0 == "."}
            masLogin.append(string)
        }
    }
}
for (number, i) in masLogin.enumerated(){
    if var indexTwo = i.range(of: "-")?.lowerBound{
        var substringTwo = i[..<indexTwo]
        var stringTwo = String(substringTwo)
        replaceElement(in: &masLogin, element: i, with: stringTwo)
    }
    
}
for i in masStringUser{
    if i != " "{
        if var indexThree = i.range(of: "@")?.lowerBound {
            var substringThree = i[indexThree...]
            var stringThree = String(substringThree)
        
            masDomen.append(stringThree)
        }
    }
}
for (number, i) in masDomen.enumerated(){
    var kol = 0
    for j in i{
        if j == "."{
            kol += 1
        }
    }
    countOfDat.append(kol)
}

for (number, i) in masDomen.enumerated(){
    if countOfDat[number] == 1{
        if var indexMasDomen = i.range(of: ".")?.lowerBound{
            var substringMasDomen = i[..<indexMasDomen]
            var stringMasDomen = String(substringMasDomen)
            replaceElement(in: &masDomen, element: i, with: stringMasDomen)
        }
    }else{
        var kolTwo = 0
        for (numberS, j) in i.enumerated() {
            if (j == "."){
                kolTwo += 1
                if kolTwo == countOfDat[number]{
                    var datIndex = numberS
                    var finalString = i
                    var countElement = finalString.count
                    var finalStringTwo = String(finalString.dropLast(countElement - datIndex))
                    replaceElement(in: &masDomen, element: i, with: finalStringTwo)
                }
            }else{
            
            }
        }
    }
    
}
var referanceTypeLogin = ""
var referanceTypeDomen = ""
var kol = 0
for i in 0..<n {
    if i == 0 {
        referanceTypeLogin = masLogin[i]
        referanceTypeDomen = masDomen[i]
    }else{
        if (masLogin[i] == referanceTypeLogin) && (masDomen[i] == referanceTypeDomen){
            kol += 1
        }
        referanceTypeLogin = masLogin[i]
        referanceTypeDomen = masDomen[i]
    }
     

}
print(n - kol)
