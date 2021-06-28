//
//  SuggestResources.swift
//  RedSolApp
//
//  Created by Ashley Raigosa on 6/21/21.
//

import SwiftUI

struct SuggestResourcesView: View {
    
    // resizable text field variables
    @State var height: CGFloat = 20
    
    // Text Field variables and functions
    @State var organizationName: String = ""
    @State var webPage: String = ""
    @State var location: String = ""        // note this needs to be fixed to take state, address etc.
    @State var telephoneNumber: String = ""
    @State var description: String = ""
    
    
    
    func sendInformation() {
        print("sending information...")
    }
    
    func cancel() {
        print("cancel!")
    }
    
    // design variables
    @State var customBlue = Color(red: 82, green: 130, blue: 250, opacity: 1.0)
    var body: some View {
        VStack(spacing: 30) {
            
            VStack(alignment: .leading) {
                Text("Nombre de la organización")
                    .font(.custom("Roboto-Regular", size: 18))
                    .foregroundColor(Color.gray)
                TextField("", text: $organizationName)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.gray, lineWidth: 1.0))
                    .disableAutocorrection(true)
                    .autocapitalization(.none)

            }
            
            VStack(alignment: .leading) {
                Text("Página Web")
                    .font(.custom("Roboto-Regular", size: 18))
                    .foregroundColor(Color.gray)

                TextField("", text: $webPage)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.gray, lineWidth: 1.0))
                    .disableAutocorrection(true)
                    .autocapitalization(.none)

            }
            
            VStack(alignment: .leading) {
                Text("Ubicación")
                    .font(.custom("Roboto-Regular", size: 18))
                    .foregroundColor(Color.gray)

                TextField("", text: $location)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.gray, lineWidth: 1.0))
                    .disableAutocorrection(true)
                    .autocapitalization(.none)

            }
                    
            VStack(alignment: .leading) {
                Text("Teléfono")
                    .font(.custom("Roboto-Regular", size: 18))
                    .foregroundColor(Color.gray)

                TextField("", text: $telephoneNumber)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.gray, lineWidth: 1.0))
                    .disableAutocorrection(true)
                    .autocapitalization(.none)

            }
            
            ScrollView(.vertical, showsIndicators: false) {
                
                // chat content
                Text("")
            }
            
            ResizableTF(text: self.$description, height: self.$height)
                .frame(height: self.height)
                .font(.custom("Roboto-Regular", size: 18))
            
//            VStack(alignment: .leading) {
//                Text("Descripción")
//                    .font(.custom("Roboto-Regular", size: 18))
//                    .foregroundColor(Color.gray)
//
//                TextField("", text: $description)
//                    .frame(height: 100)
//                    .padding()
//                    .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.gray, lineWidth: 1.0))
//                    .disableAutocorrection(true)
//                    .autocapitalization(.none)
//            }
            
            HStack(spacing: 10) {
                Button(action: { sendInformation() }) {
                    Text("Enviar")
                        .frame(width: 150, height: 50)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(14)
                    
                }
                
                Button(action: { cancel() }) {
                    Text("Cancelar")
                        .frame(width: 150, height: 50)
                        .overlay(RoundedRectangle(cornerRadius: 14).stroke(Color.blue, lineWidth: 1.0))
                        .autocapitalization(.none)
                }
            }
            .padding(25)
        }
        .padding()
        
        
    }
}

struct SuggestResourcesView_Previews: PreviewProvider {
    static var previews: some View {
        SuggestResourcesView()
    }
}

// resizable text field

struct ResizableTF: UIViewRepresentable {
    
    @Binding var text: String
    @Binding var height: CGFloat
    
    func makeCoordinator() -> Coordinator {
        
        return ResizableTF.Coordinator(parent1: self)
    }
    
    
    func makeUIView(context: Context) -> UITextView {
        
        let view = UITextView()
        view.isEditable = true
        view.isScrollEnabled = true
        view.text = "Description"
        view.textColor = .gray
        view.delegate = context.coordinator
        
        return view
    }
    
    func updateUIView(_ uiView: UITextView, context: Context) {
        
    }
    
    class Coordinator: NSObject, UITextViewDelegate {
        
        var parent: ResizableTF
        
        init(parent1: ResizableTF) {
            parent = parent1
        }
        
        func textViewDidBeginEditing(_ textView: UITextView) {
            
            if self.parent.text == "" {
                textView.text = ""
                textView.textColor = .black
            }
        }
        
        func textViewDidChange(_ textView: UITextView) {
            
            DispatchQueue.main.async {
                self.parent.height = textView.contentSize.height
                self.parent.text = textView.text
            }

        }
    }
    
}
