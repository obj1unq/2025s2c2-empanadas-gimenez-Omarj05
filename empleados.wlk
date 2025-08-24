//Ejercicio 1

object gimenez {
    var fondoParaSueldos = 300000

    method pagarA_(empleado) {
        fondoParaSueldos = fondoParaSueldos - (empleado.sueldoQueGana())
        empleado.cobrarSueldoDelMes()
    }

    method importeActualDelFondo() { return fondoParaSueldos } //getter
}

object galvan {
    var sueldo = 15000
    var deuda = 0
    var dinero = 0
    
    method sueldo(_sueldo) { sueldo = _sueldo } //setter

    method sueldoQueGana() { return sueldo }    //getter

    method deuda() { return deuda }             //getter

    method dinero() { return dinero }           //getter

    method cobrarSueldoDelMes() {
        dinero = dinero + (-deuda +sueldo).max(0)   //si deuda > sueldo --> no se añade dinero 
        deuda = ( -(-deuda +sueldo) ).max(0)        //si hay sobrante (deuda <= sueldo) --> la deuda queda en 0
    }

    method gastar(gasto) {
        deuda = deuda + ( -(dinero -gasto) ).max(0)  //si dinero <= gasto --> lo que falta se añade a deuda.
        dinero = (-(gasto -dinero) ).max(0)          //si dinero <= gasto --> dinero queda en 0
    }
}

object baigorria {
    var empanadasVendidas = 0
    var sueldo = 0
    var totalCobrado = 0

    method sueldoQueGana() { return sueldo }                            //getter

    method totalACobrar(_totalACobrar) { totalCobrado = _totalACobrar } //setter

    method totalCobrado() { return totalCobrado }                       //getter

    method sueldo(_sueldo) { sueldo = _sueldo }                         //setter
    
    method reiniciarContadorDeEmpanadas() {
        empanadasVendidas = 0
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
        empanadasVendidas = empanadasVendidas +cantidad                 //contador
        sueldo = sueldo + (cantidad * 15)
    }
}















