//Escribir aqui los objetos
//Ejercicio 1

object gimenez {
    var fondoParaSueldos = 300000

    method pagarA_(empleado) {
        fondoParaSueldos = fondoParaSueldos - (empleado.sueldoQueGana())
    }

    method importeActualDelFondo() {
        return fondoParaSueldos //getter
    }
}

object galvan {
    var sueldo = 15000
    
    method sueldo(_sueldo) { sueldo = _sueldo } //setter

    method sueldoQueGana() {
        return sueldo //getter
    }
}

object baigorria {
    var empanadasVendidas = 0
    var sueldo = 0

    method sueldoQueGana() {
        return sueldo //getter
    }

    method vender_Empanadas(cantidad){
        empanadasVendidas = empanadasVendidas +cantidad //contador
        sueldo = sueldo + (cantidad * 15)
    }
}















