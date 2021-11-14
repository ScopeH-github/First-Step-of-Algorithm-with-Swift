// 1부터 20까지의 숫자가 하나씩 적힌 공 중 단 한개를 제외한 19개가 주머니에 들어 있다. Ball[19]에 있는 숫자를 직접 인덱싱 출력하지 않고 빠진 숫자를 찾아내라.

func getMissing(_ ball: [Int]) -> Int {
    var number = 0
    var sum = 0
    let normalSum = 20*(1+20)/2
    for i in ball {
        sum += i
    }
    number = normalSum - sum
    return number
}

let missing = getMissing(Ball)
print("빠진 숫자는 \(missing)입니다.")
