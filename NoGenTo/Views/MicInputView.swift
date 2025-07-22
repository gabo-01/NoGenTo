import SwiftUI

struct MicInputView :View{
    @State private var isRecording: Bool = false;
    @State private var transcription="Is recording";
    @State private var animatedWaves=false;
    
    var body:some View{
        VStack{
            Text(transcription)
                .font(.subheadline)
                
                .padding()
            
            Button(action:{
                toggleMic()
            }){
                ZStack{
                    Circle()
                        .fill(isRecording ? Color.red.opacity(0.8): Color.blue.opacity(0.8))
                        .frame(width: 80, height: 80)
                        .shadow(color:isRecording ? .red : .blue ,radius: 10)
                        .scaleEffect(isRecording ? 1.1 : 1)
                    
                    Image(systemName: isRecording ? "mic.fill" : "mic")
                                            .font(.system(size: 30))
                                            .foregroundColor(.white)
                }
                .animation(.easeInOut(duration:0.3),value: isRecording)
            }
            .buttonStyle(.plain)
        }
        
    }
       
    
    func toggleMic(){
        isRecording.toggle()
        if isRecording{
            
            
            transcription = "Recording..."
            // Aquí va el llamado real al servicio de voz u Ollama
            // Simulamos una espera y resultado por ahora:
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                isRecording=false
                transcription="Crea tarea para el juevecito"
                // Aquí enviaríamos esto a OllamaService
            }
        }else{
            transcription="Pulse to Record"
        }
        
    }
    
  
}
struct MicInputView_Preview:PreviewProvider{
    static var previews:some View{
        MicInputView()
            .previewLayout(.device)
            .padding()
    }
}
