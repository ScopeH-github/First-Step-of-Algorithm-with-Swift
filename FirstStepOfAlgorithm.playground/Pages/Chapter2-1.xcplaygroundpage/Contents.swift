// 한 상자를 구성하는 10개의 약병 중 한 개의 약병은 정량보다 무거운 불량품이다. 저울을 한 번만 사용하여 이 불량 약병을 찾아내어라.
// 무거운 약병에 들어있는 약의 중량은 전부 2g, 정상적인 약의 중량은 1g이다. 약은 한 병당 100정이 들어있다.

// 병에 들어있는 약의 무게가 정의된 배열 medicine[10]이 4상자가 정의되어 있다. 이 중 각각 잘못된 약이 몇 번째에 있는지, **배열을 직접 인덱싱하지 않고** 확인하라.
// medicine1, medicine2, medicine3, medicine4

func getWrong(_ medicine : [Int]) -> Int {
    var index = 0
    var sum = 0
    for i in 0..<medicine.count {
        sum += medicine[i] * (i + 1)
    }
    index = (sum - 55) - 1
    return index
}

let m1 = getWrong(medicine1)
let m2 = getWrong(medicine2)
let m3 = getWrong(medicine3)
let m4 = getWrong(medicine4)

print("m1[\(m1)] = \(medicine1[m1]) -> \(m1 + 1)번째 약병이 불량")
print("m2[\(m2)] = \(medicine2[m2]) -> \(m2 + 1)번째 약병이 불량")
print("m3[\(m3)] = \(medicine3[m3]) -> \(m3 + 1)번째 약병이 불량")
print("m4[\(m4)] = \(medicine4[m4]) -> \(m4 + 1)번째 약병이 불량")
