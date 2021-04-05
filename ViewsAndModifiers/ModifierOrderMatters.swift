// 3
/* SOURCE : https://www.hackingwithswift.com/books/ios-swiftui/why-modifier-order-matters
 */

import SwiftUI



struct ModifierOrderMatters: View {
    
    var body: some View {
        
        VStack {
            Text("Hello World")
                .foregroundColor(Color.white)
                .frame(width : 245 ,
                       height : 100)
                .background(Color.blue)
            Text("Hello There")
                .background(Color.blue)
                .frame(width : 245 ,
                       height : 150)
                .foregroundColor(Color.white)
            Button("Hello"){
                print(type(of: self.body))
                /**
                 Swift’s `type(of:)` method
                 prints the exact type
                 of a particular value ,
                 and in this instance
                 it will print the following : `ModifiedContent<ModifiedContent<Button<Text>, _BackgroundModifier<Color>>, _FrameLayout>`
                 As you can see ,
                 we end with `ModifiedContent` types stacking up
                 – each one takes a view to transform
                 plus the actual change to make ,
                 rather than modifying the view directly .
                 */
            }
            Text("Hello Again")
                .padding()
                .background(Color.yellow)
                .padding()
                .background(Color.orange)
                .padding()
                .background(Color.red)
                .padding()
                .background(Color.purple)
                .padding()
                .background(Color.blue)
        }
    }
}





struct ModifierOrderMatters_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ModifierOrderMatters()
    }
}
