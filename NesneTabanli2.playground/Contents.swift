import UIKit

//Kalitim

class Ev{
    var pencereSayisi : Int?
    
    init(pencereSayisi: Int? = nil) {
        self.pencereSayisi = pencereSayisi
    }
}

class Saray : Ev {
    var kuleSayisi : Int?
    
    init(kuleSayisi: Int, pencereSayisi: Int) {
        self.kuleSayisi = kuleSayisi
        super.init(pencereSayisi: pencereSayisi)
    }
}

class Villa : Ev {
    var garajVarMi : Bool?
    
    init(garajVarMi: Bool, pencereSayisi: Int) {
        self.garajVarMi = garajVarMi
        super.init(pencereSayisi: pencereSayisi)
    }
}

let topkapiSarayi = Saray(kuleSayisi: 5, pencereSayisi: 300)
let bogazVilla = Villa(garajVarMi: true, pencereSayisi: 30)

print(topkapiSarayi.kuleSayisi!)
print(topkapiSarayi.pencereSayisi!)

print(bogazVilla.garajVarMi!)
print(bogazVilla.pencereSayisi!)


//Override

class Hayvan{
    func sesCikar(){
        print("Sesim yok!")
    }
}

class Memeli : Hayvan {
    
}

class Kedi : Memeli {
    override func sesCikar() {
        print("Miyav miyav!")
    }
}

class Kopek : Memeli {
    override func sesCikar() {
        print("Hav hav!")
    }
}

let venus = Kedi()
venus.sesCikar()


//upcasting
var ev = Saray(kuleSayisi: 3, pencereSayisi: 10) as Ev

// Downcasting
var saray = Ev(pencereSayisi: 6) as? Saray

//Extension
extension Int {
    func carp(sayi:Int) -> Int {
        return self * sayi
    }
}

let x = 3.carp(sayi: 4)
print(x)


//Closure

let ifade = {
    print("Ifade")
}

ifade()
