import UIKit

var a = 3
var b = 5

var x = 4
var y = 2

print("a==b : \(a == b)")
print("a!=b : \(a != b)")
print("a>b : \(a > b)")
print("a>=b : \(a >= b)")
print("a<b : \(a < b)")
print("a<=b : \(a <= b)")

print("a > b || x > y : \(a > b || x > y)")

print("a > b && x > y : \(a > b && x > y)")

var yas = 17
var isim = "Ahmet"

if yas >= 18{
    print("Resitsiniz")
}else{
    print("Resit degilsiniz")
}

var gun = 3

switch gun {
    case 1: print("Pazartesi")
    case 2: print("Sali")
    case 3: print("Carsamba")
    case 4: print("Persembe")
    case 5: print("Cuma")
    case 6: print("Cumartesi")
    case 7: print("Pazar")
    default: print("Yanlis Giris")
}

for i in 1...3 {
    print(i)
}

for a in stride(from: 10, through: 20, by: 5) {
    print(a)
}

for b in stride(from: 20, through: 10, by: -5) {
    print(b)
}

var sayac = 1
while sayac < 4 {
    print(sayac)
    sayac += 1
}

for i in 1...5 {
    if i == 3{
        break
    }
    print(i)
}

for i in 1...5 {
    if i == 3{
        continue
    }
    print(i)
}

