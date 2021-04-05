// 7
/* SOURCE : https://www.hackingwithswift.com/books/ios-swiftui/views-as-properties
 */

import SwiftUI



struct ViewsAsProperties: View {
    
     // /////////////////
    //  MARK: PROPERTIES
    
    let dorothy: some View = Text("Dorothy Gale")
    let glinda: some View = Text("Glinda of Oz")
    // let ozma = glinda // ERROR : Cannot use instance member 'glinda' within property initializer ; property initializers run before 'self' is available .
    /**
     `NOTE` : Swift doesn’t let us create one stored property
     that refers to other stored properties ,
     because it would cause problems when the object is created .
     This means trying to create a TextField bound
     to a local property
     will cause problems ...
     */
    
    
     // //////////////////////////
    //  MARK: COMPUTED PROPERTIES
    
    /**
     ... However , you can create computed properties
     if you want , like this :
     */
    var emeraldCity: some View {
        
        return Text("Emerald city of Oz")
        
    }
    
    
    var body: some View {
        
        VStack {
            dorothy
                .font(.title)
                .foregroundColor(.red)
            emeraldCity
                .font(.caption)
                .foregroundColor(.green)
            glinda
                .foregroundColor(.blue)
        }
    }
}





struct ViewsAsProperties_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ViewsAsProperties().previewDevice("iPhone 12 Pro")
    }
}
