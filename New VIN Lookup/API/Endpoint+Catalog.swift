//
//  Endpoint+Catalog.swift
//  New VIN Lookup
//
//  Created by Tony Langworthy on 3/18/23.
//

import Foundation
import Cause_Logic_Effect

extension Endpoint where Response == CatalogResponse {
    
    static func catalog(vinNumber: String) -> Endpoint {
        
        let request = URLRequest(url: URL(string: "https://catalog.webbdealer.com/catalog/vin/\(vinNumber)")!)
        
        return Endpoint(request: request, decoder: JSONDecoder())
    }
        
}
