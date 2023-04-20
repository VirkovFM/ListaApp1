import SwiftUI

struct TareaIndividual: View {
    @ObservedObject var tarea:Tarea
    
    var body: some View {
        HStack{
            Text(tarea.titulo)
            Spacer()
            if tarea.completado{
                Image(
                    systemName: "checkmark.circle.fill")
                .foregroundColor(.green)
                .onTapGesture {
                    tarea.completado.toggle()
                }
            }
            else{
                Image(
                    systemName: "circle")
                .foregroundColor(.red)
                .onTapGesture {
                    tarea.completado.toggle()
                }
            }
        }
    }
}

/*struct TareaIndividual_Previews: PreviewProvider {
    static var previews: some View {
        TareaIndividual(tarea: Tarea)
    }
}
*/
