// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let catalogResponse = try? JSONDecoder().decode(CatalogResponse.self, from: jsonData)

import Foundation

// MARK: - CatalogResponse
struct CatalogResponse: Codable {
    let vehicleCatalogId, vin, year, make: String
    let model, trim, bodyStyle, numberOfDoors: String
    let size, category, fuelType, fuelCapacity: String
    let cityMileage, highwayMileage, engine, engineSize: String
    let engineCylinders, transmission, transmissionType, transmissionSpeeds: String
    let drivetrain, antiBrakeSystem, steeringType, curbWeight: String
    let overallHeight, overallWidth, overallLength, standardSeating: String
    let availableColors: [AvailableColor]?
    let equipment: [Equipment]

}

// MARK: - AvailableColor
struct AvailableColor: Codable {
    let name: String
    let category: Category
}

enum Category: String, Codable {
    case exterior = "Exterior"
    case interior = "Interior"
}

// MARK: - Equipment
struct Equipment: Codable {
    let group, name: String
    let availability: Availability?
    let value: String?
}

enum Availability: String, Codable {
    case availabilityOptional = "Optional"
    case standard = "Standard"
}

