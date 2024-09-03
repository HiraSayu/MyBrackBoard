//
//  ContentView.swift
//  MyBrackBoard
//
//  Created by 平原　早雪 on 2023/09/10.
//

import SwiftUI

struct ContentView: View {
    
    @State private var nowuserinput: String = ""
    @State var isSave: Bool = false
    @AppStorage("input_key") var userinput:String = ""
    
    //func nowTime() ->String{
        //if(isSave==false){
            //return \(userinput)
            
        //}else{
            //return nowuserinput
        //}
    //}
    var body: some View {
        
        
        VStack {
            Text("My Brack Board")
                .font(.system(size: 30))
                .bold()
            
            TextField("enter your memos", text: $userinput )
                .disableAutocorrection(true)
                .padding(30)
            Text(userinput)
                .foregroundColor(.white)
                .background(.black)
                .font(.system(size: 40))
                .padding(20)
            Button(action:{
              isSave = true
            }){
                Text("save")
                
            }
            if isSave == true{
                Text("Don't forget!")
                    .padding(.top)
            }
        }
        .textFieldStyle(.roundedBorder)
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
