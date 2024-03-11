import UIKit

//Set
var meyveler = Set<String>()

//Veri ekleme
meyveler.insert("Elma")
meyveler.insert("Portakal")
meyveler.insert("Muz")
print(meyveler)

meyveler.insert("Elma")
print(meyveler)

//Donguler
for meyve in meyveler {
    print("Sonuc : \(meyve)")
}

//Dictionary
var iller = [Int : String]()

//Veri ekleme
iller[34] = "Istanbul"
iller[16] = "Bursa"
print(iller[16]!)

//Donguler
for (anahtar,deger) in iller {
    print(" \(anahtar) : \(deger)")
}

iller.removeValue(forKey: 16)
print(iller)
