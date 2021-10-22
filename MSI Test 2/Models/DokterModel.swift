//
//  DokterModel.swift
//  MSI Test 2
//
//  Created by Fikri Ihsan on 21/10/21.
//

import Foundation
import UIKit
import MapKit

struct Dokter {
    var nama : String
    var lokasi : String
    var title : String
    var harga : String
    var rekomNum : String
    var schedule : String
    var foto : UIImage
    var loc : CLLocation
}

enum DokterList {
    static var list : [Dokter] = [
        Dokter(nama: "Fikri", lokasi: "Gandaria", title: "Bedah", harga: "Rp 700.000", rekomNum: "222", schedule: "Rabu, 14:30", foto: UIImage(named: "im_dokter1")!, loc: CLLocation(latitude: -6.270490, longitude: 106.794250)),
        Dokter(nama: "Ihsan", lokasi: "Kebayoran Lama", title: "Gigi", harga: "Rp 500.000", rekomNum: "333", schedule: "Kamis, 11:30", foto:  UIImage(named: "im_dokter2")!, loc: CLLocation(latitude: -6.244392, longitude: 106.776543)),
        Dokter(nama: "Ahmad", lokasi: "Pondok Indah", title: "Jantung", harga: "Rp 800.000", rekomNum: "213", schedule: "Jumat, 09:30", foto:  UIImage(named: "im_dokter2")!, loc: CLLocation(latitude: -6.275820, longitude: 106.782190)),
        Dokter(nama: "Hiztro", lokasi: "Kebon Jeruk", title: "Bedah", harga: "Rp 900.000", rekomNum: "231", schedule: "Rabu, 19:30", foto:  UIImage(named: "im_dokter3")!, loc: CLLocation(latitude: -6.173650, longitude: 106.775772)),
        Dokter(nama: "Naufal", lokasi: "Sarinah", title: "Gigi", harga: "Rp 100.000", rekomNum: "22652", schedule: "Senin, 12:30", foto:  UIImage(named: "im_dokter1")!, loc: CLLocation(latitude: -6.137556, longitude: 106.814548)),
        Dokter(nama: "Komar", lokasi: "Permata Hijau", title: "Syaraf", harga: "Rp 400.000", rekomNum: "8766", schedule: "Rabu, 14:30", foto:  UIImage(named: "im_dokter3")!, loc: CLLocation(latitude: -6.211544, longitude: 106.845172)),
        Dokter(nama: "Iqbal", lokasi: "Pluit", title: "Kulit", harga: "Rp 600.000", rekomNum: "222", schedule: "Selasa, 14:00", foto:  UIImage(named: "im_dokter2")!, loc: CLLocation(latitude: -6.208763, longitude: 106.845599)),
        Dokter(nama: "Acung", lokasi: "Sudirman", title: "Kulit", harga: "Rp 700.000", rekomNum: "8765", schedule: "Sabtu, 10:30", foto:  UIImage(named: "im_dokter3")!, loc: CLLocation(latitude: -6.217721, longitude: 106.811469)),
        Dokter(nama: "Kelvin", lokasi: "Kebayoran Baru", title: "Bedah", harga: "Rp 800.000", rekomNum: "987", schedule: "Senin, 19:30", foto:  UIImage(named: "im_dokter1")!, loc: CLLocation(latitude: -6.242524, longitude: 106.812974)),
        Dokter(nama: "John", lokasi: "Pasar Minggu", title: "Jantung", harga: "Rp 500.000", rekomNum: "3443", schedule: "Rabu, 17:30", foto:  UIImage(named: "im_dokter2")!, loc: CLLocation(latitude: -6.296216, longitude: 106.843634))
    ]
}
