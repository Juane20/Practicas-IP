from queue import LifoQueue as Pila
def promedioEstudiante(lu:str) -> float:
    archivo:file = open("test1.csv", "r")
    contenido: list[str] = archivo.readlines()
    sinSaltos: list[str] = []
    for i in range(0, len(contenido)):
        sinSaltos.append(contenido[i].rstrip())
    linea: str= ""
    luLeido: str = ""
    promedio: int = 0
    sumaNotas: float = 0
    dividirEntre: int = 0
    i: int = 0
    print(sinSaltos)
    while i < len(sinSaltos):
        linea = sinSaltos[i].split(",")
        if linea[0] == lu:
            luLeido = linea[0]
            sumaNotas += float(linea[3])
            dividirEntre += 1
        i += 1
    promedio = sumaNotas/dividirEntre
    return promedio
