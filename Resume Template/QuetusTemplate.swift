//
//  QuetusTemplate.swift
//  test
//
//  Created by Adsum MAC 3 on 13/07/21.
//

import SwiftUI

struct QuetusTemplate: View {
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            ZStack {
                VStack{
                    Color("lo")
                        .frame(width: UIScreen.main.bounds.width - 20, height: 20)
                        .padding()
                    
                    VStack(alignment:.trailing){
                        Text("John Doe")
                            .font(.title)
                            .fontWeight(.semibold)
                        
                        HStack{
                            Text("(555) 214-8963")
                                .font(.system(size: 13))
                                .foregroundColor(Color.black)
                            
                            Text("|")
                                .foregroundColor(Color.black)
                            
                            Text("j.doe@gmail.com")
                                .font(.system(size: 13))
                                .foregroundColor(Color.black)
                            
                            Text("|")
                                .foregroundColor(Color.black)
                            
                            Text("https://linkdin.com/j.doe")
                                .font(.system(size: 13))
                                .foregroundColor(Color.black)
                            
                        }.padding(.top,2)
                        .multilineTextAlignment(.trailing)
                    }
                    .multilineTextAlignment(.trailing)
                    
                    VStack(alignment:.trailing) {
                        Rectangle()
                            .frame(height: 10)
                            .foregroundColor(.gray)
                        
                        Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.")
                            .multilineTextAlignment(.trailing)
                        
                        
                    }.padding()
                    
                    VStack(alignment:.trailing) {
                        
                        Text("EXPERIENCE")
                            .font(.title2)
                            .fontWeight(.semibold)
                        
                        Rectangle()
                            .frame(height: 10)
                            .foregroundColor(.gray)
                        
                        HStack {
                            VStack(alignment:.trailing){
                                
                                HStack {
                                    Text("2020")
                                        .fontWeight(.semibold)
                                    Text("-")
                                    
                                    Text("Present")
                                        .fontWeight(.semibold)
                                }
                                
                                Text("Harvard")

                                Text("Computer Science")
                                    .fontWeight(.semibold)
                                
                            }
                            
                            Spacer()
                            
                            VStack(alignment:.trailing){
                                
                                HStack {
                                    Text("2010")
                                        .fontWeight(.semibold)
                                    Text("-")
                                    
                                    Text("2015")
                                        .fontWeight(.semibold)
                                }
                                
                                Text("OSU")

                                Text("Programming")
                                    .fontWeight(.semibold)
                                
                            }
                        }.padding()
                        
                        Divider()
                        
                        HStack {
                            VStack(alignment:.trailing){
                                
                                HStack {
                                    Text("2020")
                                        .fontWeight(.semibold)
                                    Text("-")
                                    
                                    Text("Present")
                                        .fontWeight(.semibold)
                                }
                                
                                Text("Harvard")

                                Text("Computer Science")
                                    .fontWeight(.semibold)
                                
                            }
                            
                            Spacer()
                            
                            VStack(alignment:.trailing){
                                
                                HStack {
                                    Text("2010")
                                        .fontWeight(.semibold)
                                    Text("-")
                                    
                                    Text("2015")
                                        .fontWeight(.semibold)
                                }
                                
                                Text("OSU")

                                Text("Programming")
                                    .fontWeight(.semibold)
                                
                            }
                        }.padding()
                    }.padding()
                    
                    VStack(alignment:.trailing) {
                        
                        Text("EDUCATION")
                            .font(.title2)
                            .fontWeight(.semibold)
                        
                        Rectangle()
                            .frame(height: 10)
                            .foregroundColor(.gray)
                        
                        HStack {
                            VStack(alignment:.trailing){
                                
                                HStack {
                                    Text("2020")
                                        .fontWeight(.semibold)
                                    Text("-")
                                    
                                    Text("Present")
                                        .fontWeight(.semibold)
                                }
                                
                                Text("Harvard")

                                Text("Computer Science")
                                    .fontWeight(.semibold)
                            }
                            
                            Spacer()
                          
                            
                            VStack(alignment:.trailing){
                                
                                HStack {
                                    Text("2010")
                                        .fontWeight(.semibold)
                                    Text("-")
                                    
                                    Text("2015")
                                        .fontWeight(.semibold)
                                }
                                
                                Text("OSU")

                                Text("Programming")
                                    .fontWeight(.semibold)
                            }
                        }.padding()
                    }.padding()
                    
                    VStack(alignment:.trailing) {
                        
                        Text("SOFTWARE")
                            .font(.title2)
                            .fontWeight(.semibold)
                        
                        Rectangle()
                            .frame(height: 10)
                            .foregroundColor(.gray)
                        
                        VStack {
                            HStack{
                                HStack {
                                    Text("Microsoft Word")
                                        .fontWeight(.semibold)
                                    Text("Good")
                                }
                                
                                Spacer()
                                
                                HStack {
                                    Text("Xcode")
                                        .fontWeight(.semibold)
                                    Text("Exceilent")
                                }
                            }
                            
                            HStack{
                                HStack {
                                    Text("Photoshop")
                                        .fontWeight(.semibold)
                                    Text("Very Good")
                                }
                                
                                Spacer()
                                
                                HStack {
                                    Text("Keynote")
                                        .fontWeight(.semibold)
                                    Text("Good")
                                }
                            }
                        }.padding()
                    }.padding()
                    
                    VStack(alignment:.trailing) {
                        
                        Text("SKILLS")
                            .font(.title2)
                            .fontWeight(.semibold)
                        
                        Rectangle()
                            .frame(height: 10)
                            .foregroundColor(.gray)
                        
                        VStack(alignment:.center) {
                            HStack(alignment: .center){
                                Text("Publick speaking Accounting")
                                
                                Spacer()
                                
                                Text("Creativity Negotiation")
                                
                                Spacer()
                                
                                Text("Spanish")
                                    
                            }.multilineTextAlignment(.center)
                        }.padding()
                    }.padding()
                }
            }
        }
    }
}

struct QuetusTemplate_Previews: PreviewProvider {
    static var previews: some View {
        QuetusTemplate()
    }
}
