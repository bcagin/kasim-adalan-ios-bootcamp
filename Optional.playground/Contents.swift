import UIKit

//Tanimlama

var mesaj = "Merhaba"

var str : String? = nil

str = "Merhaba"

if str != nil {
    print(str!) //unwrap
}else{
    print("str nil deger iceriyor")
}

if let temp = str {
    print(temp)
}
