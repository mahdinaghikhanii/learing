import SwiftUI





struct ContentView : View {
    var body: some View{
        VStack{
            Text("Hello Swift UI!")
                .padding()
                .font(.title)
            Spacer()
            Spacer()
            
            HStack{
                Spacer()
                VStack{
                    Image("apple").resizable()
                        .scaledToFit()
                        .frame(width: 100, height:100)
                    Text("Apple")
                }
                Spacer()
                VStack{
                    Image("banana").resizable()
                        .scaledToFit()
                        .frame(width: 100, height:100)
                    Text("Banana")
                    
                }
                Spacer()
                VStack{
                    Image("watermelon").resizable()
                        .scaledToFit()
                        .frame(width: 100, height:100)
                    Text("Watermelon")
                }
                Spacer()
            }
           
            Spacer()
            Button{}label: {
                Text("Spin")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .font(.system(size: 18))
            }.frame(width: 120, height: 50, alignment: .center)
                .background(.red)
                .clipShape(RoundedRectangle(cornerRadius: 50))
            Spacer()
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
        }

     
    }
}
