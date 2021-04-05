// 5
/* SOURCE : https://www.hackingwithswift.com/books/ios-swiftui/conditional-modifiers
 */

import SwiftUI




struct ConditionalModifiers: View {
    
    @State private var isShowingColorRed = false
    
    
    
    var body: some View {
        
//        Button(action: { () -> Void in
//            if self.isShowingColorRed == false {
//                return Text("Button")
//                    .foregroundColor(.blue) // ERROR : Unexpected non-void return value in void function .
//            } else {
//                return Text("Button")
//                    .foregroundColor(.red) // ERROR : Unexpected non-void return value in void function .
//            }
//        } , label : {
//            Text("Button")
//                .font(.largeTitle)
//                .bold()
//        })
        
        Button(action: {
            isShowingColorRed.toggle()
        } , label : {
            Text("Hello 👋 World 🌍")
                .font(.largeTitle)
                .foregroundColor(isShowingColorRed ? .green : .blue)
        })
    }
}





struct ConditionalModifiers_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ConditionalModifiers().previewDevice("iPhone 12 Pro")
    }
}
