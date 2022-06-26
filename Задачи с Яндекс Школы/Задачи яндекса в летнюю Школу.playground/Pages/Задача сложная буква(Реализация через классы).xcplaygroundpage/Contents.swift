import Cocoa
import Foundation


class FastPrint {
    
    func takeUserData() -> (countLetter:Int, writerString:String, numberString:[String]) {
        var countLetter = 4
        var writerString = "bcda"
        var numberStringS = "1 2 4 6"
        var numberString = numberStringS.components(separatedBy: " ")
        return (countLetter, writerString, numberString)
    }
    
    func converStringInInt(str:[String]) -> [Int]{
        var mas = [Int]()
        var masStr = str
        masStr.removeAll() { $0 == ""}
        mas = masStr.map{Int($0)!}
        return  mas
    }
    
    func addDict(writerString:String, masUserTiming:[Int]) -> [String:Int]{
        var dict:[String : Int] = [:]
        var k = 0
        var finalTime:Int
        for i in writerString{
            if k == 0 {
                dict.updateValue(masUserTiming[k], forKey: String(i))
            }else{
                
                finalTime = masUserTiming[k] - masUserTiming[k - 1]
                dict.updateValue(finalTime, forKey: String(i))
            }
            k += 1
        }
        return dict
        
    }
    
    func workWithDict(dict:[String:Int]) -> String{
        var result = ""
        var max = 0
        for (latter, number) in dict{
            if number > max{
                max  = number
                result = latter
            }
        }
        return result
    }

}
func work() -> String{
    var result:String
    var primerOne = FastPrint()
    var mas = primerOne.converStringInInt(str: primerOne.takeUserData().numberString)
    var dict = primerOne.addDict(writerString: primerOne.takeUserData().writerString, masUserTiming: mas)
    result = primerOne.workWithDict(dict: dict)
    return result
}
print(work())

