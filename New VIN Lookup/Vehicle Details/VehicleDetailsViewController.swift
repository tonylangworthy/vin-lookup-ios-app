//
//  VehicleDetailsViewController.swift
//  New VIN Lookup
//
//  Created by Tony Langworthy on 3/18/23.
//

import RxSwift
import UIKit

final class VehicleDetailsViewController: UIViewController {
	
	// IBOutlets go here
	
    @IBOutlet var yearLabel: UILabel!
    
    @IBOutlet var makeLabel: UILabel!
    
    @IBOutlet var modelLabel: UILabel!
    
    let disposeBag = DisposeBag()
}
