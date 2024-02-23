import UIKit


//1.soru

func km_to_mile(input : Double) -> Double{
    return input * 0.621
}

print(km_to_mile(input: 5))


//2.soru

func dikdortgenAlani(kisaKenar : Int, uzunKenar : Int){
    var alan = (kisaKenar + uzunKenar) * 2
    print("Dikdortgenin alani = \(alan)")
}

dikdortgenAlani(kisaKenar: 4, uzunKenar: 4)


//3.soru

func faktoriyel(input: Int) -> Int {
    var sonuc = 1
    var number = input
    while number > 0 {
        sonuc *= number
        number = number - 1
    }
    return sonuc
}

print(faktoriyel(input: 4))


//4.soru

func harf_say(word : String){
    var sonuc = 0
    for i in word{
        if i == "e"{
            sonuc+=1
        }
    }
    print(sonuc)
}

harf_say(word: "ekmek")


//5.soru

func ic_acilar(kenar : Double) -> Double {
    var ic_acilar_toplami = ((kenar - 2)*180) / kenar
    return ic_acilar_toplami
}

print(ic_acilar(kenar: 4))


//6.soru

func maasHesapla(gun : Int) -> Int {
    let calisma_saati = gun * 8
    var maas = 0
    var mesai_ucreti = 0
    
    if calisma_saati > 150 {
        let mesai = calisma_saati - 150
        var mesai_ucreti = mesai * 80
        var normal_ucret = 150 * 40
        maas = mesai_ucreti + normal_ucret
    }else{
        var normal_ucret = calisma_saati * 40
        maas = normal_ucret
    }
    return maas
}

print(maasHesapla(gun: 20))


//7.soru

func otopark(sure : Int) -> Int{
    var ucret = 0
    if sure == 1{
        ucret = 50
    }else{
        var asim = (sure - 1) * 10
        ucret = asim + 50
    }
    
    return ucret
}

print(otopark(sure: 4))
