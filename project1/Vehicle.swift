//
//  Vehicle.swift
//  project1
//
//  Created by Rza Ismayilov on 11.04.22.
//

import Foundation

/*
 Builder Creator example
 */

class Vehicle : CustomStringConvertible {
	private var _fuelType : FuelType = .benzin
	private var _nbOfPassenger : Int = 5
	private var _nbOfWheels : Int = 4
	
	public var description: String {
		return "Fuel type: \(fuelType == .diesel ? "diesel" : "benzin"), Number of passengers: \(nbOfPassenger), Number of wheels: \(nbOfWheels)."
	}
	
	
	public var fuelType : FuelType {
		set {
			_fuelType = newValue
		}
		get {
			return _fuelType
		}
	}
	
	public var nbOfPassenger : Int {
		set {
			_nbOfPassenger = newValue
		}
		get {
			return _nbOfPassenger
		}
	}
	
	public var nbOfWheels : Int {
		set {
			_nbOfWheels = newValue
		}
		get {
			return _nbOfWheels
		}
	}
    
    class VehicleBuilder {
        private var vehicle : Vehicle = Vehicle()
        
        public func setFuelType(fuelType : FuelType) -> VehicleBuilder {
            self.vehicle.fuelType = fuelType
            return self
        }
        
        public func setNbOfPassenger(nbOfPassenger : Int) -> VehicleBuilder {
            self.vehicle.nbOfPassenger = nbOfPassenger
            return self
        }
        
        public func setNbOfWheels(nbOfWheels : Int) -> VehicleBuilder {
            self.vehicle.nbOfWheels = nbOfWheels
            return self
        }
        
        public func buildVehicle() -> Vehicle {
            return self.vehicle
        }
    }
}


enum FuelType {
	case benzin, diesel
}
