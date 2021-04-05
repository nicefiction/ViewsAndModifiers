// 6
/* SOURCE : https://www.hackingwithswift.com/books/ios-swiftui/environment-modifiers
 */

import SwiftUI



struct EnvironmentModifiers: View {
    
    var body: some View {
        
        VStack {
            VStack(alignment : .leading ,
                   spacing : 15) {
                Text("Dorothy")
                    .font(.largeTitle)
                    .bold()
                Text("Glinda")
                Text("Ozma")
                Text("Emily")
            }
            .font(.title)
            
            Spacer()
            
            VStack {
                Text("Aa")
                Text("Bb")
                    .blur(radius : 0.0)
                Text("Cc")
                Text("Dd")
                Text("Ee")
            }
            .font(.title)
            .blur(radius : 3.0)
            /**
             `NOTE` :  `blur()` is a regular modifier ,
             so any blurs applied to child views
             are added to the `VStack` blur
             rather than replacing it .
             */
            
            Spacer()
            
            VStack {
                Text("Aa")
                Text("Bb")
                    .blur(radius : 3.0)
                Text("Cc")
                Text("Dd")
                Text("Ee")
            }
            .font(.title)
        }
    }
}





struct EnvironmentModifiers_Previews: PreviewProvider {
    
    static var previews: some View {
        
        EnvironmentModifiers().previewDevice("iPhone 12 Pro")
    }
}
