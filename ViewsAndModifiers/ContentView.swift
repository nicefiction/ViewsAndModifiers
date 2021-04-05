// MARK: ContentView.swift



 // ////////////////
//  MARK: LIBRARIES

import SwiftUI



struct BlueHeader: ViewModifier {
    
    func body(content: Content)
    -> some View {
        
        return content
            .font(.system(size : 43 ,
                          weight : .heavy ,
                          design : .rounded))
            .foregroundColor(.blue)
    }
}



extension View {
    
    func applyBlueHeader()
    -> some View {
        
        return self.modifier(BlueHeader())
    }
}





 // //////////////////////////////////
//  MARK: struct ContentView: View { }

struct ContentView: View {
    
     // //////////////////////////
    //  MARK: COMPUTED PROPERTIES
    
    var body: some View {
        
        VStack(spacing : 20) {
            Text("Hello World")
                .modifier(BlueHeader())
            
            Text("Hello Again")
                .applyBlueHeader()
        }
    }
}





 // ///////////////
//  MARK: PREVIEWS

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ContentView().previewDevice("iPhone 12 Pro")
    }
}
