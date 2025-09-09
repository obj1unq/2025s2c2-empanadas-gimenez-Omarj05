object gimenez {
    var property fondo = 300000

    method pagarEmpleado(empleado) {
        self.validarPagarEmpleado(empleado)
        fondo = fondo - empleado.sueldo()
        empleado.cobrarSueldo()
    }

    method validarPagarEmpleado(empleado) {
        if (not self.puedePagar(empleado)) {
            self.error("No se puede pagarle a empleado. Faltan " + (empleado.sueldo() - fondo))
        }
    }

    method puedePagar(empleado) {
        return fondo >= empleado.sueldo()
    }
}

object galvan {
    var property sueldo = 15000
    var property dinero = 0
    var property deuda = 0

    method cobrarSueldo() {
        dinero = dinero + (-deuda +sueldo).max(0)   //si deuda > sueldo --> no se añade dinero 
        deuda = ( -(-deuda +sueldo) ).max(0)        //si hay sobrante (deuda <= sueldo) --> la deuda queda en 0
    }

    method gastar(gasto) {
        deuda = deuda + ( -(dinero -gasto) ).max(0)  //si dinero <= gasto --> lo que falta se añade a deuda.
        dinero = (-(gasto -dinero) ).max(0)          //si dinero <= gasto --> dinero queda en 0
    }
}

object baigorria {
    var property empanadasVendidas = 0
    var property totalCobrado = 0

    method sueldo() { return empanadasVendidas * 15 }

    method vender(cantidad) {
        empanadasVendidas = empanadasVendidas + cantidad
    }

    method cobrarSueldo() {
        totalCobrado = totalCobrado + self.sueldo()
        empanadasVendidas = 0
    }
}

















