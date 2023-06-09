from queue import Queue as Cola
def armarCola(pacientes: list[(int,str,str)]) -> Cola:
    cola: Cola = Cola()
    for i in range(0, len(pacientes)):
        cola.put(pacientes[i])
    return cola

def nPacientesUrgentes(c: Cola()) -> int:
    contador: int = 0
    while not c.empty():
        paciente = c.get()
        if paciente[0] <= 3:
            contador += 1
    return contador
