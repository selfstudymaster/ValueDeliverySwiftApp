import SwiftUI

struct ContentView: View {
    
    @State private var name = ""
    
    var body: some View {
        NavigationView{
            VStack(spacing: 30.0) {
                TextField("名前を入力してください。", text: $name)
                    .border(Color.blue, width: 2)
                    .font(.title)
                    .padding(.horizontal, 20.0)
                NavigationLink(destination: SubView(name: $name)) {
                    Text("Enter")
                        .font(.title)
                }
                
            }
        }
    }
}

struct SubView: View {
    
    @Binding var name: String
    
    var body: some View {
        Text("はじめまして、 \(name)さん")
            .font(.largeTitle)
            .foregroundColor(Color.pink)
    }
}
