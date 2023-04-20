import Foundation

class Tarea: Identifiable, ObservableObject{
    var id = UUID()
    @Published var titulo: String
    @Published var completado: Bool
    
    init(titulo:String, completado:Bool) {
        self.titulo = titulo
        self.completado = completado
    }
    
    
    
}

class ListaTareas: ObservableObject{
    @Published var tareas:[Tarea] = [
        Tarea(titulo: "Corte de cabello", completado: false),
        Tarea(titulo: "Lavado de autos", completado: true),
        Tarea(titulo: "Correr profesores", completado: true)
    ]
}
