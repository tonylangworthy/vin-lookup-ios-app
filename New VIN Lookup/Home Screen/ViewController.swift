//
//  ViewController.swift
//  New VIN Lookup
//
//  Created by Tony Langworthy on 3/15/23.
//

import UIKit
import Cause_Logic_Effect
import RxSwift
import RxCocoa

class ViewController: UIViewController {

    @IBOutlet var vinField: UITextField!
    
    @IBOutlet var useCameraButton: UIButton!
    
    @IBOutlet var submitButton: UIButton!
    
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let api = API()
        
        
        submitButton.rx.tap
            .withLatestFrom(vinField.rx.text.orEmpty)
            .filter { !$0.isValidVin }
            .bind(onNext: presentScene(animated: true, scene: { vinNumber in UIAlertController(title: "Error", message: "Invalid Vin! \(vinNumber)", preferredStyle: .alert).scene({ $0.connectOK() })}))
            .disposed(by: disposeBag)

        let response = submitButton.rx.tap
            .withLatestFrom(vinField.rx.text.orEmpty)
            .filter { $0.isValidVin }
            .flatMapLatest { vinNumber in api.response(.catalog(vinNumber: vinNumber)) }
        
        response.bind(onNext: presentScene(animated: true, scene: { vehicleDetails in
            VehicleDetailsViewController.scene { $0.connect(vehicleDetails: vehicleDetails) }
        })).disposed(by: disposeBag)
        
        api.error.map { "\($0)" }
            .bind(onNext: presentScene(animated: true, scene: { errorDescription in UIAlertController(title: "Error", message: "Invalid Vin! \(errorDescription)", preferredStyle: .alert).scene({ $0.connectOK() })}))
            .disposed(by: disposeBag)

    }


}

extension String {
    
    var isValidVin: Bool {
        
        // If only one line in the function, no return is needed
        self.count == 17
    }
}
