//
//  DetailDokterViewController.swift
//  MSI Test 2
//
//  Created by Fikri Ihsan on 21/10/21.
//

import UIKit
import MapKit

class DetailDokterViewController: UIViewController {
    
    var dokter : Dokter?
    
    @IBOutlet weak var mLblRekom: UILabel!
    @IBOutlet weak var mLblSchedule: UILabel!
    @IBOutlet weak var mLblNama: UILabel!
    @IBOutlet weak var mLblLokasi: UILabel!
    @IBOutlet weak var mLblTitle: UILabel!
    @IBOutlet weak var mLblHarga: UILabel!
    @IBOutlet weak var mapKit: MKMapView!
    @IBOutlet weak var mIvFoto: UIImageView!
    
    
    convenience init(dokter : Dokter){
        self.init()
        self.dokter = dokter
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        mLblRekom.text = dokter?.rekomNum
        mLblSchedule.text = dokter?.schedule
        mLblNama.text = dokter?.nama
        mLblLokasi.text = dokter?.lokasi
        mLblTitle.text = dokter?.title
        mLblHarga.text = dokter?.harga
        mIvFoto.image = dokter?.foto
        
        let initialLocation = CLLocation(latitude: (dokter?.loc.coordinate.latitude)!, longitude: (dokter?.loc.coordinate.longitude)!)
        
        let annotation = MKPointAnnotation()
        
        annotation.coordinate = CLLocationCoordinate2D(latitude: (dokter?.loc.coordinate.latitude)!, longitude: (dokter?.loc.coordinate.longitude)!)
        mapKit.addAnnotation(annotation)
        mapKit.centerToLocation(initialLocation)
    }
    
    
    


}

private extension MKMapView {
  func centerToLocation(
    _ location: CLLocation,
    regionRadius: CLLocationDistance = 1000
  ) {
    let coordinateRegion = MKCoordinateRegion(
      center: location.coordinate,
      latitudinalMeters: regionRadius,
      longitudinalMeters: regionRadius)
    setRegion(coordinateRegion, animated: true)
  }
}
