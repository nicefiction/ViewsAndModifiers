// 8
/* SOURCE : https://www.hackingwithswift.com/books/ios-swiftui/view-composition
 */

import SwiftUI



struct ViewComposition: View {
    
    var body: some View {
        
        VStack(spacing : 20) {
            CapsuleView(capsuleText : "First")
                .foregroundColor(.white)
            
            CapsuleView(capsuleText : "Second")
                .foregroundColor(.yellow)
        }
    }
}



/**
 SwiftUI lets us break complex views down into smaller views
 without incurring much if any performance impact :
 */
struct CapsuleView: View {
    
    let capsuleText: String
    
    
    var body: some View {
        
        Text(capsuleText)
            .font(.largeTitle)
            .fontWeight(.semibold)
            // .foregroundColor(Color.white)
            .padding()
            .background(Color.blue)
            .clipShape(Capsule())
    }
}





struct ViewComposition_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ViewComposition().previewDevice("iPhone 12 Pro")
    }
}



