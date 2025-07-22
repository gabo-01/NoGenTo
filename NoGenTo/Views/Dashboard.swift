import SwiftUI
struct Dashboard: View {
    var body:some View{
        VStack(alignment:.leading){
            Text("Hello Fernando ")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.white)
                .padding()
            
            IndicatorsViews(completedTasks: 3, pendingTasks: 8)
            
            Spacer()
            
            MicInputView()
        }
        .padding()
        
        VStack{
            
        }
    }
}
