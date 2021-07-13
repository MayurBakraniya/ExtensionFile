//
//  popularTemplate.swift
//  test
//
//  Created by Adsum MAC 3 on 13/07/21.
//

import SwiftUI

struct popularTemplate: View {
    
    @State var rating = -1
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            HStack {
                VStack {
                    Color.blue
                        .frame(width: UIScreen.main.bounds.width / 10 , height: UIScreen.main.bounds.height)
                        .opacity(0.6)
                        .ignoresSafeArea()
                }
                
                VStack {
                    HStack{
                        VStack(alignment: .leading){
                            Text("John")
                                .font(.title)
                                .fontWeight(.semibold)
                            
                            Text("Doe")
                                .font(.title)
                        }
                        
                        Spacer()
                        
                        Image("01")
                            .resizable()
                            .frame(width: 100, height: 60, alignment: .center)
                    }
                    
                    Divider()
                    
                    HStack{
                        VStack(alignment: .leading){
                            HStack{
                                VStack(alignment: .leading){
                                    HStack{
                                        Image(systemName: "phone.fill")
                                            .resizable()
                                            .frame(width: 20, height: 20, alignment: .center)
                                        Text("(555) 214-8963")
                                    }
                                    
                                    HStack{
                                        Image(systemName: "envelope.fill")
                                            .resizable()
                                            .frame(width: 20, height: 15, alignment: .center)
                                        Text("j.doe@gmail.com")
                                    }
                                    
                                    HStack{
                                        Image(systemName: "network")
                                            .resizable()
                                            .frame(width: 20, height: 20, alignment: .center)
                                        
                                        Text("http://linkdin.com/j.doe")
                                    }
                                }
                            }
                            
                            VStack(alignment: .leading){
                                Text("Skills")
                                    .font(.title2)
                                    .fontWeight(.semibold)
                               
                                Divider()
                                
                                Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.")
                            }
                            
                            VStack(alignment: .leading){
                                Text("Softwere")
                                    .font(.title2)
                                    .fontWeight(.semibold)
                                
                                Divider()
                                
                            }.padding(.top)
                            
                            VStack{
                                VStack(alignment: .leading){
                                    Text("Microsoft Word")
                                    ratingView(rating: $rating)
                                    
                                }.padding(.top)
                                VStack(alignment: .leading){
                                    Text("Xcode")
                                    ratingView(rating: $rating)
                                    
                                }.padding(.top)
                                VStack(alignment: .leading){
                                    Text("Photoshop")
                                    ratingView(rating: $rating)
                                    
                                }.padding(.top)
                                VStack(alignment: .leading){
                                    Text("Keynote")
                                    ratingView(rating: $rating)
                                    
                                }.padding(.top)
                            }
                        }
                        
                        HStack{
                            Divider()
                                .background(Color.blue)
                        }
                        
                        VStack(alignment: .leading){
                            HStack{
                                VStack(alignment: .center){
                                    Text("Summary")
                                        .frame(width: 160, height: 40, alignment: .center)
                                        .font(.system(size: 15))
                                        .background(Color("lg"))
                                        .cornerRadius(50)
                                    
                                    Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.")
                                }
                            }.multilineTextAlignment(.center)
                            
                            VStack(alignment: .leading){
                                Text("Experience")
                                    .frame(width: 160, height: 40, alignment: .center)
                                    .background(Color("lg"))
                                    .cornerRadius(50)
                                    .padding(.top)
                                
                                VStack {
                                    VStack(alignment:.leading){
                                        Text("Apple Inc")
                                            .fontWeight(.semibold)
                                        Text("Software Developer")
                                        
                                        HStack {
                                            Text("2/2019")
                                                .fontWeight(.semibold)
                                            Text("-")
                                            
                                            Text("2/2020")
                                                .fontWeight(.semibold)
                                        }.font(.system(size: 14))
                                    }.font(.system(size: 14))
                                    
                                    Divider()
                                    
                                    VStack(alignment:.leading){
                                        Text("IBM")
                                            .fontWeight(.semibold)
                                        Text("VP")
                                        
                                        HStack {
                                            Text("10/2020")
                                                .fontWeight(.semibold)
                                            Text("-")
                                            
                                            Text("Present")
                                                .fontWeight(.semibold)
                                        }.font(.system(size: 14))
                                    }.font(.system(size: 14))
                                    
                                }.padding(.top)
                                
                                VStack {
                                    VStack(alignment:.leading){
                                        Text("Apple Inc")
                                            .fontWeight(.semibold)
                                        Text("Software Developer")
                                        
                                        HStack {
                                            Text("2/2019")
                                                .fontWeight(.semibold)
                                            Text("-")
                                            
                                            Text("2/2020")
                                                .fontWeight(.semibold)
                                        }.font(.system(size: 14))
                                    }.font(.system(size: 14))
                                    
                                    Divider()
                                    
                                    VStack(alignment:.leading){
                                        Text("IBM")
                                            .fontWeight(.semibold)
                                        Text("VP")
                                        
                                        HStack {
                                            Text("10/2020")
                                                .fontWeight(.semibold)
                                            Text("-")
                                            
                                            Text("Present")
                                                .fontWeight(.semibold)
                                        }.font(.system(size: 14))
                                    }.font(.system(size: 14))
                                    
                                }.padding(.top)
                                
                            }
                            VStack(alignment: .leading){
                                Text("Education")
                                    .frame(width: 160, height: 40, alignment: .center)
                                    .background(Color("lg"))
                                    .cornerRadius(50)
                                    .padding(.top)
                                
                                VStack {
                                    VStack(alignment:.leading){
                                        Text("Apple Inc")
                                            .fontWeight(.semibold)
                                        Text("Software Developer")
                                        
                                        HStack {
                                            Text("2/2019")
                                                .fontWeight(.semibold)
                                            Text("-")
                                            
                                            Text("2/2020")
                                                .fontWeight(.semibold)
                                        }.font(.system(size: 14))
                                    }.font(.system(size: 14))
                                    
                                    Divider()
                                    
                                    VStack(alignment:.leading){
                                        Text("IBM")
                                            .fontWeight(.semibold)
                                        Text("VP")
                                        
                                        HStack {
                                            Text("10/2020")
                                                .fontWeight(.semibold)
                                            Text("-")
                                            
                                            Text("Present")
                                                .fontWeight(.semibold)
                                        }.font(.system(size: 14))
                                    }.font(.system(size: 14))
                                    
                                }.padding(.top)
                            }
                            Spacer()
                        }.padding(.leading, 0)
                    }
                }.padding()
            }
        }
    }
}

struct popularTemplate_Previews: PreviewProvider {
    static var previews: some View {
        popularTemplate()
    }
}
