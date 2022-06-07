import SwiftUI

struct ContentView : View {
    @State private var myImages = ["apple","banana","watermelon"]
    
    @State private var image1 = "apple"
    @State private var image2 = "banana"
    @State private var image3 = "watermelon"
    @State private var credit = 1000
    
    var body: some View{
        
        VStack{
            Spacer()
            
            Text("Hello Swift UI!")
                .padding()
                .font(.title)
            Spacer()
            
            Text("Credit :" + String(credit))
                .font(.system(size:20))
            
            HStack{
                Spacer()
                VStack{
                    Image(image1).resizable()
                        .resizable()
                        .frame(width: 100, height:100)
                    Text(image1)
                }
                Spacer()
                VStack{
                    Image(image2).resizable()
                        .scaledToFit()
                        .frame(width: 100, height:100)
                    Text(image2)
                        .foregroundColor(.black)
                        .fontWeight(.medium)
                    
                }
                Spacer()
                VStack{
                    Image(image3).resizable()
                        .scaledToFit()
                        .frame(width: 100, height:100)
                    Text(image3)
                }
                Spacer()
            }
           
            Spacer()
            Button{
                func myRandom() -> Int {
                    return Int.random(in: 0...2)
                }
                let num1 = myRandom()
                let num2 = myRandom()
                let num3 = myRandom()
                
                image1 = myImages[num1]
                image2 = myImages[num2]
                image3 = myImages[num3]
                
                if num1 == num2 && num3 == num2 {
                    credit += 45
                }else if num1 == num2 || num2 == num3 || num3 == num1{
                    credit += 14
                }else if num1 != num2 && num2 != num3{
                    credit -= 45
                }
            }label: {
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
