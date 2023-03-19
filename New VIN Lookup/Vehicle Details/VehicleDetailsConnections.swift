//
//  VehicleDetailsConnections.swift
//  New VIN Lookup
//
//  Created by Tony Langworthy on 3/18/23.
//

import RxCocoa
import RxSwift
import UIKit

extension VehicleDetailsViewController {
    func connect(vehicleDetails: CatalogResponse) -> Observable<VehicleDetailsAction> {
        yearLabel.text = vehicleDetails.year
        makeLabel.text = vehicleDetails.make
        modelLabel.text = vehicleDetails.model
		// connect views here.
        
		
		// return action to communicate to parent view controller.
		return Observable<VehicleDetailsAction>.never()
	}
}

enum VehicleDetailsAction {
	
}
