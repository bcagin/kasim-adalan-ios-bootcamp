import UIKit

//class olusturma

class Araba {
    var renk : String?
    var hiz : Int?
    var calisiyorMu : Bool?
    
    func calistir() {
        calisiyorMu = true
        hiz = 5
    }
    
    func durdur() {
        calisiyorMu = false
        hiz = 0
    }
    
    func hizlandir (kacKm: Int){
        hiz! += kacKm
    }
    
    func bilgiAl() {
        print("----------------")
        print("Renk: \(renk!)")
        print("Hiz: \(hiz!)")
        print("Calisiyor mu: \(calisiyorMu!)")
    }
    init(renk: String? = nil, hiz: Int? = nil, calisiyorMu: Bool? = nil) {
        self.renk = renk
        self.hiz = hiz
        self.calisiyorMu = calisiyorMu
    }
}

//nesne olusturma

var bmw = Araba()
var sahin = Araba()

var mercedes = Araba(renk: "mavi", hiz: 10, calisiyorMu: true)
mercedes.bilgiAl()

bmw.hiz = 120
bmw.renk = "Kirmizi"
bmw.calisiyorMu = true

bmw.bilgiAl()
bmw.durdur()
bmw.bilgiAl()
bmw.calistir()
bmw.bilgiAl()
bmw.hizlandir(kacKm: 10)
bmw.bilgiAl()


class Fonksiyonlar {
    func selamla(){
        let sonuc = "Merhaba Ahmet1"
        print(sonuc)
    }
    
    func selamla(isim : String){
        let sonuc = "Merhaba \(isim)"
        print(sonuc)
    }
    
    func selamla2() -> String{
        let sonuc = "Merhaba Ahmet"
        return sonuc
    }
    
    func selamla3(isim : String){
        let sonuc = "Merhaba \(isim)"
        print(sonuc)
    }
}


let f = Fonksiyonlar()

f.selamla(isim: "Ahmet2")
f.selamla()
print(f.selamla2())
f.selamla3(isim: "Ahmet")

enum KonserveBoyut{
    case kucuk
    case orta
    case buyuk
}

func ucretHesapla(boyut: KonserveBoyut, adet:Int){
    switch boyut{
    case .buyuk : print("Fiyat \(adet * 13)")
    case .kucuk : print("Fiyat \(adet * 10)")
    case.orta : print("Fiyat \(adet * 11)")
    }
}

ucretHesapla(boyut: .buyuk, adet: 10)

