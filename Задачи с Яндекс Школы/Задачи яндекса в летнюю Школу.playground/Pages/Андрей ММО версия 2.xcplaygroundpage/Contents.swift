import Foundation
import IOKit

//var n = Int(readLine()!)!
//var lisString = readLine()!
var n = 6
var lisString = "1 2 3 4 5 6"
var lisMas = lisString.components(separatedBy: " ")
var lis = lisMas.map{Int($0)!}
var has_zero = false
var pos_min = nil


