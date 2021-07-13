//
//  BasicModernTemplate.swift
//  test
//
//  Created by Adsum MAC 3 on 13/07/21.
//

import SwiftUI

struct BasicModernTemplate: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            ZStack {
                VStack {
                    Text("JD")
                        .font(.system(size: 45))
                        .fontWeight(.bold)
                        .clipShape(Circle())
                        .padding()
                        .overlay(Circle().stroke(Color.black, lineWidth: 2))
                    
                    Text("John Doe")
                        .font(.title)
                        .fontWeight(.semibold)
                    
                    HStack{
                        Text("(555) 214-8963")
                            .font(.system(size: 12))
                        
                        Text("|")
                        
                        Text("j.doe@gmail.com")
                            .font(.system(size: 12))
                        
                        Text("|")
                        
                        Text("https://linkdin.com/j.doe")
                            .font(.system(size: 12))
                    }
                    
                    Divider()
                    
                    VStack(alignment:.leading) {
                        Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.")
                    }
                    
                    VStack(alignment:.leading){
                        
                        HStack {
                            Text("EXPERIENCE")
                                .font(.title2)
                                .fontWeight(.semibold)
                            
                            Rectangle()
                                .frame(height: 1)
                                .foregroundColor(.black)
                        }
                        
                        
                        HStack {
                            VStack(alignment:.trailing){
                                Text("Apple Inc")
                                    .fontWeight(.semibold)
                                Text("Software Developer")
                                
                                HStack {
                                    Text("2/2019")
                                        .fontWeight(.semibold)
                                    Text("-")
                                    
                                    Text("2/2020")
                                        .fontWeight(.semibold)
                                }
                            }
                            
                            Spacer()
                            
                            VStack(alignment:.trailing){
                                Text("IBM")
                                    .fontWeight(.semibold)
                                Text("VP")
                                
                                HStack {
                                    Text("10/2020")
                                        .fontWeight(.semibold)
                                    Text("-")
                                    
                                    Text("Present")
                                        .fontWeight(.semibold)
                                }
                            }
                            
                        }.padding()
                        
                        Divider()
                       
                        HStack {
                            VStack(alignment:.trailing){
                                Text("Facebook")
                                    .fontWeight(.semibold)
                                Text("Associate")
                                
                                HStack {
                                    Text("5/2005")
                                        .fontWeight(.semibold)
                                    Text("-")
                                    
                                    Text("10/2010")
                                        .fontWeight(.semibold)
                                }
                            }
                            
                            Spacer()
                            
                            VStack(alignment:.trailing){
                                Text("NETFLIX")
                                    .fontWeight(.semibold)
                                Text("Senior VP")
                                
                                HStack {
                                    Text("10/2012")
                                        .fontWeight(.semibold)
                                    Text("-")
                                    
                                    Text("8/2020")
                                        .fontWeight(.semibold)
                                }
                            }
                        }.padding()
                        
                    }.padding(.top)
                    
                    VStack(alignment:.leading){
                        
                        HStack {
                            Text("EDUCATION")
                                .font(.title2)
                                .fontWeight(.semibold)
                            
                            Rectangle()
                                .frame(height: 1)
                                .foregroundColor(.black)
                        }
                        
                        
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
                    }.padding(.top)
                    
                    VStack(alignment:.leading){
                        
                        HStack {
                            Text("SOFTWARE")
                                .font(.title2)
                                .fontWeight(.semibold)
                            
                            Rectangle()
                                .frame(height:1)
                                .foregroundColor(.black)
                        }
                        
                        
                        HStack {
                            VStack(alignment:.trailing){
                                Text("Microsoft Word")
                                    .fontWeight(.semibold)
                                
                                HStack {
                                    Circle()
                                        .frame(width: 10, height: 10)
                                    Circle()
                                        .frame(width: 10, height: 10)
                                }
                                
                                Text("Good")
                                    .fontWeight(.semibold)
                            }
                            
                            Spacer()
                            
                            VStack(alignment:.trailing){
                                Text("Xcode")
                                    .fontWeight(.semibold)
                                
                                HStack {
                                    Circle()
                                        .frame(width: 10, height: 10)
                                    Circle()
                                        .frame(width: 10, height: 10)
                                    Circle()
                                        .frame(width: 10, height: 10)
                                    Circle()
                                        .frame(width: 10, height: 10)
                                }
                                
                                Text("Exceilent")
                                    .fontWeight(.semibold)
                            }
                        }.padding()
                        
                        Divider()
                       
                        HStack {
                            VStack(alignment:.trailing){
                                Text("Photoshop")
                                    .fontWeight(.semibold)
                                    .padding(.leading,40)
                                
                                HStack {
                                    Circle()
                                        .frame(width: 10, height: 10)
                                    Circle()
                                        .frame(width: 10, height: 10)
                                    Circle()
                                        .frame(width: 10, height: 10)
                                }
                                
                                Text("Very Good")
                                    .fontWeight(.semibold)
                            }
                            
                            Spacer()
                            
                            VStack(alignment:.trailing){
                                Text("Keynote")
                                    .fontWeight(.semibold)
                                
                                HStack {
                                    Circle()
                                        .frame(width: 10, height: 10)
                                    Circle()
                                        .frame(width: 10, height: 10)
                                }
                                
                                Text("Good")
                                    .fontWeight(.semibold)
                            }
                        }.padding()
                        
                    }.padding(.top)
                    
                    VStack(alignment:.leading){
                        
                        HStack {
                            Text("SKILLS")
                                .font(.title2)
                                .fontWeight(.semibold)
                            
                            Rectangle()
                                .frame(height: 1)
                                .foregroundColor(.black)
                        }
                        
                        Divider()
                        
                        Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.")
                       
                    }.padding(.top)
                }
            }.padding()
        }
    }
}

struct BasicModernTemplate_Previews: PreviewProvider {
    static var previews: some View {
        BasicModernTemplate()
    }
}
