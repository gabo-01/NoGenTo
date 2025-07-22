import SwiftUI


struct IndicatorsViews: View {
    var completedTasks:Int
    var pendingTasks:Int
    var body:some View{
        HStack{
            VStack{
                Text("✅ Completadas")
                Text("\(completedTasks)")
                    .font(.title)
                    .bold()
                
            }
            .padding()
            .background(Color(.systemGray))
            .cornerRadius(7)
            .shadow(radius: 5)
            
            VStack{
                Text("🕞Pendientes ")
                Text("\(pendingTasks)")
                    .font(.title)
                    .bold()
            }
            .padding()
            .background(Color(.systemGray))
            .cornerRadius(7)
            .shadow(radius: 5)
            
        }
    }
}

 
