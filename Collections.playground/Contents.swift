import UIKit

//Array kullanimi

var numaralar = [10, 20, 30]
var meyveler = [String]()

//Veri ekleme
meyveler.append("Elma")
meyveler.append("Muz")
meyveler.append("Kiraz")
print(meyveler)

//Guncelleme
meyveler[0] = "Erik"
print(meyveler)

//Insert
meyveler.insert("Portakal", at: 1)
print(meyveler)

//Veri okuma
print(meyveler[2])
let m = meyveler[2]
print(m)

//Boyut
print("Boyut: \(meyveler.count)")

//Bos-Dolu
print("Bos mu: \(meyveler.isEmpty)")

//Donguler
for meyve in meyveler {
    print("Meyveler: \(meyve)")
}

for (indeks,meyve) in meyveler.enumerated() {
    print("\(indeks). meyve: \(meyve)")
}

//Silme
meyveler.remove(at: 1)
print(meyveler)

meyveler.removeAll()
print(meyveler)

//Nesne tabanli ornek
class Ogrenciler{
    var no : Int?
    var ad : String?
    var sinif : String?
    
    init(no: Int? = nil, ad: String? = nil, sinif: String? = nil) {
        self.no = no
        self.ad = ad
        self.sinif = sinif
    }
}

var o1 = Ogrenciler(no: 200, ad: "Zeynep", sinif: "9C")
var o2 = Ogrenciler(no: 300, ad: "Ahmet", sinif: "10C")
var o3 = Ogrenciler(no: 100, ad: "Mehmet", sinif: "11C")

var ogrencilerListesi = [Ogrenciler]()
ogrencilerListesi.append(o1)
ogrencilerListesi.append(o2)
ogrencilerListesi.append(o3)

for o in ogrencilerListesi {
    print("No: \(o.no!), Sinif: \(o.sinif!), Adi: \(o.ad!)")
}

//Filtreleme
var f1 = ogrencilerListesi.filter({ $0.no! > 100 })
print("filtre 1")
for o in f1 {
    print("No: \(o.no!), Sinif: \(o.sinif!), Adi: \(o.ad!)")
}

var f2 = ogrencilerListesi.filter({ $0.ad!.contains("hm") })
print("filtre 2")
for o in f2 {
    print("No: \(o.no!), Sinif: \(o.sinif!), Adi: \(o.ad!)")
}

//Siralama - Sorting
var s1 = ogrencilerListesi.sorted(by: { $0.no! > $1.no! })
print("siralama 1")
for o in s1 {
    print("No: \(o.no!), Sinif: \(o.sinif!), Adi: \(o.ad!)")
}

var s2 = ogrencilerListesi.sorted(by: { $0.ad! < $1.ad! })
print("siralama 2")
for o in s2 {
    print("No: \(o.no!), Sinif: \(o.sinif!), Adi: \(o.ad!)")
}

