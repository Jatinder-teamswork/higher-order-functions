//
//  ViewController.swift
//  higher_order_functions
//
//  Created by Apple on 04/08/21.
//

import UIKit
import CoreLocation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        let doubled1 = numbers.map { (num) -> Int in
            return num * 2
        }
        print(doubled1)
        let doubled2 = numbers.map { $0 * 2}
        print(doubled2)
        
        let info = ["job": "Developer", "city": "Berline", "name": "Andrew", "hobby": "Computer Games"]
        let newInfo = info.map {($0.key.capitalized, $0.value.uppercased())}
        //print(newInfo)
        
        let arrayIwhtNil = [1, nil, 2, 3, 4, nil, 5]
        let compactArray = arrayIwhtNil.compactMap { $0 != nil ? $0! * 2 : nil}
        print(compactArray)
        
        let marks = [[3, 4, 5], [2, 5, 3], [1, 2, 2], [5, 5, 4], [3, 5, 3]]
        let allMarks = marks.flatMap { (array) -> [Int] in
            return array
        }
        print(allMarks)
        
        // reduce
        let product = numbers.reduce(-1, { $0 + $1 })
        print(product)
        
        CLGeocoder().geocodeAddressString("Mohali") { (placemarks, error) in
            print(error)
            print(placemarks)
            if (placemarks?.count ?? 0 > 0) {
                
            }
        }
        CLGeocoder().reverseGeocodeLocation(CLLocation.init(latitude: 30.71059600, longitude: 76.71289780)) { (placemarks, error) in
            print("- - - -  - - -- - - - - ")
            print(error)
            print(placemarks)
        }
    }


}

