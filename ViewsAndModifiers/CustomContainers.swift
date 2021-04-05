// 10
/* SOURCE : https://www.hackingwithswift.com/books/ios-swiftui/custom-containers
 */

import SwiftUI



struct CustomContainers: View {
    
    var body: some View {
        
        VStack {
            GridStack(rows : 3 ,
                      columns : 3) { (row: Int , column: Int) in
                
                Text("R \(row) • C \(column)")
                    .font(.system(size : 15 ,
                                  weight : .black))
                    .padding()
            }
            
            GridStack(rows : 2 ,
                      columns : 2) { (row: Int , column: Int) in
                /**
                 Our `GridStack` is capable of accepting any kind of cell content ,
                 as long as it conforms to the `View protocol` . So ,
                 we could give cells a stack of their own if we wanted :
                 */
                HStack {
                    Image(systemName: "\(row)\(column).circle.fill")
                        .font(.system(size : 50 ,
                                      weight : .black))
                        .frame(width : 100 ,
                               height : 100 ,
                               alignment : .center)
                    
                    Text("R\(row)C\(column)")
                }
            }
            
            GridStack(rows : 2 ,
                      columns : 2) { (row: Int , column: Int) in
                /**
                 `*` ...  SwiftUI will now automatically create
                 an implicit `HSack` inside our cell closure :
                 */
                Image(systemName: "\(row)\(column).circle.fill")
                    .font(.system(size : 50 ,
                                  weight : .black))
                    .frame(width : 100 ,
                           height : 100 ,
                           alignment : .center)
                Text("R\(row)C\(column)")
            }
        }
    }
}





struct GridStack<Content: View>: View {
    
     // /////////////////
    //  MARK: PROPERTIES
    
    let rows: Int
    let columns: Int
    let content: (Int , Int) -> Content
    
    
    
     // //////////////////////////
    //  MARK: COMPUTED PROPERTIES
    
    var body: some View {
        
        VStack {
            ForEach(0..<rows , id : \.self) { (row: Int) in
                /**
                 `NOTE`: we need to add
                 a second parameter to `ForEach` ,
                `id: \.self` ,
                 to tell SwiftUI
                 how it can identify each view in the loop .
                 */
                HStack {
                    ForEach(0..<columns , id : \.self) { (column: Int) in
                        self.content(row , column)
                    }
                }
            }
        }
    }
    
    
    
     // //////////////
    //  MARK: METHODS
    
    init(rows: Int ,
         columns: Int ,
         @ViewBuilder content: @escaping (Int , Int) -> Content) {
        
        self.rows    = rows
        self.columns = columns
        self.content = content
    }
    /**
     With that in place ... (`*` -> See up .)
     */
}





struct CustomContainers_Previews: PreviewProvider {
    
    static var previews: some View {
        
        CustomContainers().previewDevice("iPhone 12 Pro")
    }
}
