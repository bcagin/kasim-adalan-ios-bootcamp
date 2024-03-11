import UIKit

func kisiTanima1(ad:String) {
    if ad == "Ahmet" {
        print("Merhaba Ahmet")
    }else{
        print("Taninmayan Kisi!!")
    }
}
kisiTanima1(ad: "Ahmet")
kisiTanima1(ad: "Mehmet")

func kisiTanima2(ad:String) {
    guard ad == "Ahmet" else {
        print("Taninmayan Kisi!!")
        return
    }
    
    print("Merhaba Ahmet")
    
}

kisiTanima2(ad: "Ahmet")
kisiTanima2(ad: "Mehmet")

//Hata Ayiklama
//1-Compile Error : Editor Hatalari
//2-Exception

enum Hatalar : Error{
    case sifiraBolunmeHatasi
}

func bolme(sayi1:Int, sayi2:Int) throws -> Int {
    if sayi2 == 0{
        throw Hatalar.sifiraBolunmeHatasi
    }
    return sayi1 / sayi2
}

do {
    let sonuc = try bolme(sayi1: 10, sayi2: 0)
    print(sonuc)
}catch Hatalar.sifiraBolunmeHatasi{
    print("Sayi sifira bolunemez")
}

