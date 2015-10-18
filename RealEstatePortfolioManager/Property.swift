import UIKit

class Property {
  var address: String = ""
  var numberBathrooms: Int
  var numberBedrooms: Int
  var squareFootage: Int
  var masterBedroom: Bool
  var masterBathroom: Bool
  var garage: Bool
  var numberCarGarage: Int
  var frontYard: Bool
  var backYard: Bool
  var washerDryerSet: Bool
  var dateBuilt: Int
  var view: Bool
  var features: String
  
  init(location: String, numBath: Int, numBed: Int, sqrFoot: Int, mastBed: Bool, mastBath: Bool, garageSpace: Bool, numCarGarage: Int, fYard: Bool, bYard: Bool, washerDryer: Bool, builtInDate: Int, hasView: Bool, hasFeatures: String){
    address = location
    numberBathrooms = numBath
    numberBedrooms = numBed
    squareFootage = sqrFoot
    masterBedroom = mastBed
    masterBathroom = mastBath
    garage = garageSpace
    numberCarGarage = numCarGarage
    frontYard = fYard
    backYard = bYard
    washerDryerSet = washerDryer
    dateBuilt = builtInDate
    view = hasView
    features = hasFeatures
  }
}