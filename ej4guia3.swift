import Foundation

enum OperacionMatematica{
  case suma
  case resta
  case division
  case multiplicacion
}

class OperadorMatematico{

// la operacion a realizar y los numeros con los que se hagan
// no estaran ligados a datos especificos de una instancia
  static func realizarOperacion(x:Float,y:Float, op:OperacionMatematica) -> Float{
    switch op {
      case .suma:
        return x + y
      case .resta:
        return x - y
      case .division:
        return x / y
      case .multiplicacion:
        return x * y
    }
  }
}

//como realizarOperacion es un metodo estatico, podemos usarlo sin instanciar un objeto
var resultado1 = OperadorMatematico.realizarOperacion(x: 5.6, y: 4.4, op: .suma)
print(resultado1)

// problemas con la division entre 0
// problema de si realmente devuelve la funcion ? 
// hacer que retorne un opcional y unwrappearlo

