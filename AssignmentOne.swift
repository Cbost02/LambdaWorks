// Array needs to be reversed before printing

let pre_result: [Int] = primes(x: 20)
let result: [Int] = reverse(arr: pre_result)

for number in result
{
    print("\(number) ", terminator: "")
}





func reverse(arr: [Int]) -> [Int]
{
    let size_of_arr: Int = arr.count
    var flag = size_of_arr
    var result: [Int] = []
    
    while flag != 0
    {
        result.append(arr[flag - 1])
        flag = flag - 1
    }
    
    return result
}


func primes(x: Int) -> [Int]
{
    var prime_array: [Int] = []
    var flag = x
    
    while flag != 0
    {
        if isPrime(x: flag)
        {
            prime_array.append(flag)
        }
        flag = flag - 1
    }
    
    return prime_array
}


func isPrime(x: Int) -> Bool
{
    var flag = 2
    
    while flag < x
    {
        if x % flag == 0
        {
            return false
        }
        flag = flag + 1
    }
    
    return true
}
