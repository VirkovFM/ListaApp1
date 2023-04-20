import SwiftUI

struct NuevaTareaView: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var listaTareas: ListaTareas
    @State private var nuevaTareaTitulo = ""
    
    
    
    var body: some View {
        NavigationView{
            Form{
                TextField("Titulo de la tarea", text: $nuevaTareaTitulo)
            }
            .navigationBarTitle("Nueva Tarea", displayMode: .inline)
            .navigationBarItems(leading: Button("Cancelar"){
                self.presentationMode.wrappedValue.dismiss() // el profe le quito self
            },
                                trailing: Button("Guardar"){
                // Funcion de guardar
                guardarTarea()
                presentationMode.wrappedValue.dismiss()
                
            })
        }
    }
    
    private func guardarTarea(){
        let tarea = Tarea(titulo: nuevaTareaTitulo, completado: false)
        listaTareas.tareas.append(tarea)
    }
}
/*
struct NuevaTareaView_Previews: PreviewProvider {
    static var previews: some View {
        NuevaTareaView()
    }
}
*/
