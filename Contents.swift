import UIKit

enum Velocidades: Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init (velocidadInicial: Velocidades) {
        self = velocidadInicial
    }
}

class Auto{
    var velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    
    init () {
        self.velocidad = Velocidades.Apagado
        print(velocidad.rawValue,"Apagado")
    }
    
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String){
        var cadena : String = "Apagado"
        
        switch velocidad{
        case Velocidades.Apagado:
            self.velocidad = Velocidades.VelocidadBaja
            cadena = "Velocidad Baja"
        case Velocidades.VelocidadBaja:
            self.velocidad = Velocidades.VelocidadMedia
            cadena = "Velocidad Media"
        case Velocidades.VelocidadMedia:
            self.velocidad = Velocidades.VelocidadAlta
            cadena = "Velocidad Alta"
        case Velocidades.VelocidadAlta:
            self.velocidad = Velocidades.VelocidadMedia
            cadena = "Velocidad Media"
        }
        
        let resultado = (self.velocidad.rawValue, cadena)
        return resultado
    }
}


var auto = Auto()
for i in 1...20{
    var a = auto.cambioDeVelocidad()
    print(a.actual .description + " " + a.velocidadEnCadena)
}

