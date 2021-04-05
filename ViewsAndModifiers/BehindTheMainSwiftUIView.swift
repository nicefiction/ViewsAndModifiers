// 2
/* SOURCE : https://www.hackingwithswift.com/books/ios-swiftui/what-is-behind-the-main-swiftui-view
 */

import SwiftUI



struct BehindTheMainSwiftUIView: View {
    
    var body: some View {
        
        Text("Hello, world!")
            /**
             `NOTE` : Using `maxWidth` and `maxHeight`
             is different from using `width` and `height`
             – we are not saying the text view must take up all that space ,
             only that it _can_ .
             If you have other views around ,
             SwiftUI will make sure they all get enough space .
             */
            .frame(maxWidth : .infinity ,
                   maxHeight : .infinity)
            .background(Color.red)
            .edgesIgnoringSafeArea(.all)
    }
}





struct BehindTheMainSwiftUIView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        BehindTheMainSwiftUIView().previewDevice("iPhone 12 Pro")
    }
}
