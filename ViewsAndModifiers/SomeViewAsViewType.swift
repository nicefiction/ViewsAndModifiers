// 4
/* SOURCE : https://www.hackingwithswift.com/books/ios-swiftui/why-does-swiftui-use-some-view-for-its-view-type
 */

import SwiftUI



struct SomeViewAsViewType: View {
    
    
    var body: Text {

        Text("Hello World")
    }
}





struct SomeViewAsViewType_Previews: PreviewProvider {
    
    static var previews: some View {
        
        SomeViewAsViewType().previewDevice("iPhone 12 Pro")
    }
}
