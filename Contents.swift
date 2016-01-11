//: Playground - noun: a place where people can play

import UIKit

enum Velocidades:Int{
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init(velocidadInicial:Velocidades){
        self = velocidadInicial
    }
}

class Auto {
    var velocidad:Velocidades
    
    init(){
        self.velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
        
    }
    
    func cambioDeVelocidad() -> (actual:Int, velocidadEnCadena:String){
        var velocidadEnCadena:String = "Apagado"
        var velocidadActual:Int = self.velocidad.rawValue
        
        switch self.velocidad {
        case .Apagado:
            self.velocidad = Velocidades.VelocidadBaja
        case .VelocidadBaja:
            velocidadActual = self.velocidad.rawValue
            velocidadEnCadena = "Velocidad baja"
            self.velocidad = Velocidades.VelocidadMedia
        case .VelocidadMedia:
            velocidadActual = self.velocidad.rawValue
            velocidadEnCadena = "Velocidad media"
            self.velocidad = Velocidades.VelocidadAlta
        case .VelocidadAlta:
            velocidadActual = self.velocidad.rawValue
            velocidadEnCadena = "Velocidad alta"
            self.velocidad = Velocidades.VelocidadMedia
        }
        
        return (actual: velocidadActual, velocidadEnCadena:velocidadEnCadena)
    }
}

let auto = Auto()

for _ in 1...20 {
    let result = auto.cambioDeVelocidad()
    print("\(result.actual), \(result.velocidadEnCadena)")
}
