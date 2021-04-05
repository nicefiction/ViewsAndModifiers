// 9
/* SOURCE : https://www.hackingwithswift.com/books/ios-swiftui/custom-modifiers
 */

import SwiftUI



struct CustomModifiers: View {
    
    var body: some View {
        
        VStack(spacing : 10) {
            Text("Hello 👋 World 🌍")
                .modifier(Title())
            
            Text("Hello Again")
                .titleModifier()
            
            Color
                .yellow
                .frame(width : 300)
                .modifier(Watermark(watermarkText: "Dorothy Gale"))
            
            Color
                .green
                .frame(width : 300 ,
                       height : 200)
                .watermarkWith(text : "Emerald city")
        }
    }
}



struct Title: ViewModifier {
    
    func body(content: Content)
    -> some View {
        
        return content
            .font(.system(size : 24 ,
                          weight : .bold))
            .foregroundColor(.orange)
            .padding()
            .clipShape(RoundedRectangle(cornerRadius : 20))
    }
}

/**
 Custom modifiers can do much more than just apply other existing modifiers
 – they can also create new view structure , as needed . Remember ,
 modifiers return new objects rather than modifying existing ones ,
 so we could create one that embeds the view in a stack and adds another view :
 */

struct Watermark: ViewModifier {
    
    let watermarkText: String
    
    
    func body(content: Content)
    -> some View {
        
        
        return ZStack(alignment : Alignment(horizontal : .trailing ,
                                        vertical : .bottom)) {
            content
            Text(watermarkText)
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(Color.blue)
                .padding()
                .background(Color(red : 1.00 ,
                                  green : 1.00 ,
                                  blue : 1.00 ,
                                  opacity : 0.50))
        }
    }
}

/**
 When working with custom modifiers ,
 it is usually a smart idea
 to create extensions on View
 that make them easier to use :
 */

extension View {
    
    func titleModifier()
    -> some View {
        
        return self.modifier(Title())
    }
    
    
    func watermarkWith(text: String)
    -> some View {
        
        return self.modifier(Watermark(watermarkText: text))
    }
}





struct CustomModifiers_Previews: PreviewProvider {
    
    static var previews: some View {
        
        CustomModifiers().previewDevice("iPhone 12 Pro")
    }
}
