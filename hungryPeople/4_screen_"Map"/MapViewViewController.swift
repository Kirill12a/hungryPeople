

//  Created by Kirill Drozdov on 11.04.2021.
//

import UIKit
import YandexMapKit

class MapViewViewController: UIViewController {

    @IBOutlet weak var MapViewOutlet: UIView!
    
    @IBOutlet weak var mapView: YMKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()

        mapView.mapWindow.map.move(
               with: YMKCameraPosition.init(target: YMKPoint(latitude: 55.751574, longitude: 37.573856), zoom: 15, azimuth: 0, tilt: 0),
               animationType: YMKAnimation(type: YMKAnimationType.smooth, duration: 5),
               cameraCallback: nil)
        
        settingsMapView(mapViewY: mapView, mapView: MapViewOutlet)
    }
    
    
    func settingsMapView(mapViewY: YMKMapView, mapView: UIView ){
        mapView.layer.cornerRadius = 13
        mapView.layer.borderWidth = 3
        mapView.layer.borderColor = UIColor.black.cgColor
    }

  

}
