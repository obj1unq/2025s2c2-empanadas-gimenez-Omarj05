//Ejercicio 1

object gimenez {
    var fondoParaSueldos = 300000

    method pagarA_(empleado) {
        fondoParaSueldos = fondoParaSueldos - (empleado.sueldoQueGana())
        empleado.cobrarSueldoDelMes()
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

    method cobrarSueldoDelMes() {
        //nada
    }
}

object baigorria {
    var empanadasVendidas = 0
    var sueldo = 0
    var totalCobrado = 0

    method sueldoQueGana() {
        return sueldo //getter
    }

    method totalACobrar(_totalACobrar) {
            totalCobrado = _totalACobrar //setter
        }

    method totalCobrado() {
        return totalCobrado //getter
    }

    method reiniciarContadorDeEmpanadas() {
        empanadasVendidas = 0
    }

    method sueldo(_sueldo) {
        sueldo = _sueldo //setter
    }

    method reiniciarMes() {
        self.sueldo(0)
        self.reiniciarContadorDeEmpanadas()
    }
    
    method cobrarSueldoDelMes() {
        totalCobrado = totalCobrado + sueldo
        self.reiniciarMes()
    }

    method vender_Empanadas(cantidad){
        empanadasVendidas = empanadasVendidas +cantidad //contador
        sueldo = sueldo + (cantidad * 15)
    }
}















