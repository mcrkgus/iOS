import UIKit

//1. 변수 선언 및 값 설정
var intVar1 : Int = 3
var dblVar1 : Double = 3.1
var strVar1 : String = "my name is"

//2. 변수의 타입 추론
var intVar2 = 3
var dblVar2 = 3.1
var strVar2 = "my name is"

//3. 상수 선언 및 값 설정
let intLet1 : Int = 3
let dblLet1 : Double = 3.1
let strLet1 : String = "my name is"

//4. 상수의 타입 추론
let intLet2 = 3
let dblLet2 = 3.1
let strLet2 = "my name is"

var int = 3 //int형으로 타입 추론
var dbl = 3.1   //double형으로 타입 추론
var str1 = "c"  //string형으로 타입 추론
var str2 = "joe"    //string형으로 타입 추론
var tpl = ("joe", 10, 15.23)    //tuple형으로 타입 추론
var arr = ["aa", "bb", "cc", "dd"]  //Array<String>형으로 타입 추론
var dic = ["aa":1, "bb":2, "cc":3]  //Dictionary<String, Int> 타입 추론
//var val1 = []   //error
//var val2 = [:]  //error


print(type(of: dbl))
print(type(of: str1))
print(type(of: str2))
print(type(of: tpl))
print(type(of: arr))

//타입 별칭 -> C에서 typedef랑 유사함
typealias MyInt = Int
var int : MyInt = 3

//자료형의 최소값과 최대값 확인
print("Int.min : \(Int.min), Int.max: \(Int.max)")

//형 변환
var intNum : Int = -100
var uintNum : UInt = 50
var intVal = 3  //변수 intVal은 컴파일러에 의해 int형으로 타입 추론됨
//intVal = "abcde"    //에러발생
intNum = Int(uintNum)   //UInt형을 Int형으로 형 변환(type casting)

var demicalInt : Int = 28   //10진수 28
var binaryInt : Int = 0b11100   //2진수 28
var octalInt : Int = 0o34       //8진수 28
var hexademicalInt : Int = 0x1C //16진수 28


//문자열 선언 및 초기화
var str11 : String = "aaa"
var str22 : String
str22 = "bbb"

//빈 문자열 생성
var str3 : String = String()

//문자열 뒤에 문자열 추가
str22.append("ccc")

//문자열 결합
str3 = str11 + " " + str22

//빈 문자열인지 확인 및 문자열 내의 문자 수 확인
print(str11.count)
print(str11.isEmpty)

//문자열의 접두어와 접미어 확인
var result : Bool
result = str3.hasPrefix("aa")   //문자열 str3가 "aa"로 시작하는지 확인

result = str3.hasSuffix("cc")   //문자열 str3가 "cc"로 끝나는지 확인

//문자열의 대-소 문자 변환
var str4 : String = "Hello"
var str5 : String = String()
str5 = str4.uppercased()    //소문자를 대문자로
//대문자를 소문자로 변경하려면 lowercased() 사용

//튜플 변수 선언 및 초기화
var personA : (String, Int, Double)
var personB : (name : String, age : Int, height : Double)

var personC = ("Joe", 15, 180.2)    //타입 추론됨

typealias PersonTuple = (String, Int, Double)   //튜플의 alias 이용

//element요소 추가
var arrayC : [String] = ["aa", "bb"]
arrayC.append("ee")
arrayC.insert("hh", at: 2)

var emptyDictA : [String : Int] = [:]   //빈 딕셔너리 생성
var a: Int = 5
var b: Int = 3
varintQ:Int=a/b //a를b로 나눈 몫 연산
varintR:Int=a%b //a와b가 정수일 경우에만%연산을 통해a를b로 나눈 나머지 연산 가능 print("intQ:\(intQ),intR:\(intR)") //intQ:1,intR:2
var c: Double = 5.0
var d: Double = 3.0
vardblQ:Double=c/d //c를d로 나눈 몫 연산
var dblR: Double = c.truncatingRemainder(dividingBy: d) // c와 d가 부동소수점 타입(Float, Double)일 경우 c를 d 로 나눈 나머지 연산


enum Device {
    case iPhone(model: String, storage: Int)
    case iMac(size: Int, model: String, price: Int)
    case macBook(Int, String, Int)
    case watch
}
var giftA: Device =
var giftA: Device =
var giftB: Device = .iMac(size: 12, model: "X", price: 100)
var giftC: Device = .macBook(12, "X", 200)
var giftD: Device = .watch


switch giftA {
case .iPhone(let mdl, let stg): // case body 내에서 연관값(model, stroage)을 상수(mdl, stg)로 받아 사용할 때
print("iPhone \(mdl) and \(stg)GB")
case let .iMac(sz, mdl, prc): // case body 내에서 모든 연관값(size, model, price)을 상수(sz, mdl, prc)로 받아 사용할 때
        print("iMac \(sz), \(mdl), \(prc)")
    default:
        print("default")
}
// 출력 결과: iPhone Y and 256GB
switch giftB {
case .iPhone(let mdl, let stg): // case body에서 연관값(model, stroage)을 상수(mdl, stg)로 받아 사용할 때
print("iPhone \(mdl) and \(stg)GB")
case let .iMac(sz, mdl, prc): // case body에서 모든 연관값(size, model, price)을 상수(sz, mdl, prc)로 받아 사용할 때
        print("iMac \(sz), \(mdl), \(prc)")
    default:
        print("default")
}
// 출력 결과: iMac 12, X, 100
