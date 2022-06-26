var t = "данные"
var tmas = Array(t)
var marker = false
var markerTwo = false
var S = Set<Character>()
var M = t.count
var d:[Character:Int] = [:]
for i in stride(from: M - 2 , to: -1, by: -1){
    for j in S{
        if tmas[i] == j{
            marker = true
        }
    }
    if marker == false{
       d[tmas[i]] = M - 1 - i
        S.insert(tmas[i])
    }
}
for j in S{
    if tmas[M - 1] == j{
        marker = true
    }
    d[tmas[M - 1]] = M
}
d["*"] = M

var a = "метеоданные"
var amas = Array(a)
var N = a.count

if N >= M{
    var i = M - 1
    while i < N{
        var k = 0
        var j = 0
        var flBreak = false
        for j in stride(from: M - 1, to: -1, by: -1){
            if amas[i - k] != tmas[j]{
                if j == M - 1 {
                    guard var 
                }
            }
        }
    }
}
