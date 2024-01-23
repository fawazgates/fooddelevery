import SwiftUI


struct ContentView: View {
    @State var search: String = ""
    var body: some View {
        ZStack {
            VStack {
                //MARK: HEADER
                Header()
                ScrollView(.vertical, showsIndicators: false){
                    //MARK: SEARCH BAR
                    Search(search: $search)
                    //MARK: TOP TITTLE
                    TioTittle()
                    //MARK: Konten Food
                    FoodKonten()
                    //MARK: Title Second
                    SecondTitle()
                    //MARK: ICON
                    Kategori()
                    //MARK: Third Title
                    ThirdTitle()
                    //MARK: SECOND FOOD
                    Secondfood()
                        }
                    }
                }.background(Color(#colorLiteral(red: 0.8162143826, green: 0.8097243905, blue: 0.8210921884, alpha: 1)))
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            }
    }


struct ContentView_Preview : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Header: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 3) {
                Text ("Delevery to").font(.system(size: 20, weight: .bold, design: .rounded))
                HStack {
                    Image(systemName: "location.north.circle").foregroundColor(Color.secondary)
                    Text ("Jakarta. Indonesia").font(.system(size: 18, weight: .light, design: .rounded))
                }
            }.padding(.leading, 30)
            
            Spacer()
            Image("fawaz")
                .resizable().frame(width: 40, height: 40).aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .padding(.trailing, 30)
        }.padding(.top, 50)
    }
}

struct Search: View {
    @Binding var search: String
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15, style: .continuous).fill(Color.white).frame(height: 55)
            HStack {
                Button(action : {}){
                    Image(systemName: "magnifyingglass").frame(width: 55, height: 55).foregroundColor(.secondary)
                    TextField("Search For dish or restaurant", text:$search)
                }
            }
        }.padding([.leading, .trailing], 30).padding(.bottom, 10)
    }
}

struct TioTittle: View {
    var body: some View {
        HStack {
            Text("Popular Near You").font(.system(size: 18, weight: .bold, design: .rounded)).padding(.leading, 30)
            Spacer()
            Text("View more").font(.system(size: 12, weight: .bold, design: .rounded)).foregroundColor(Color.red).padding(.trailing, 30)
        }.padding(.bottom, 10)
    }
}

struct KontenFood: View {
    var image : String
    var name: String
    var deskripsi: String
    var body: some View {
        ZStack {
            VStack(alignment: .leading){
                Image(self.image).resizable().aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/).frame(width: 330, height: 200).clipped().cornerRadius(15)
                Text(self.name).font(.system(size: 18, weight: .bold, design: .rounded))
                Text(self.deskripsi).font(.system(size: 14, weight: .light, design: .rounded)).foregroundColor(Color.secondary)
                
                VStack(alignment: .leading) {
                    HStack {
                        Image(systemName: "star.fill").resizable().frame(width: 20, height: 20).foregroundColor(Color.yellow)
                        Image(systemName: "star.fill").resizable().frame(width: 20, height: 20).foregroundColor(Color.yellow)
                        Image(systemName: "star.fill").resizable().frame(width: 20, height: 20).foregroundColor(Color.yellow)
                        Image(systemName: "star.fill").resizable().frame(width: 20, height: 20).foregroundColor(Color.yellow)
                    }
                    HStack {
                        Spacer()
                        HStack {
                            Image(systemName: "location.north.fill").resizable().frame(width: 20, height: 20).foregroundColor(Color.white).padding(.leading, 5)
                            Text("254m").font(.system(size: 12, weight: .medium, design: .rounded)).foregroundColor(Color.white)
                        }.padding(5).background(Color(#colorLiteral(red: 0.8162143826, green: 0.8097243905, blue: 0.8210921884, alpha: 1))).cornerRadius(10)
                        
                        HStack {
                            Image(systemName: "clock").resizable().frame(width: 20, height: 20).foregroundColor(Color.white).padding(.leading, 5)
                            Text("254m").font(.system(size: 12, weight: .medium, design: .rounded)).foregroundColor(Color.white)
                        }.padding(5).background(Color(#colorLiteral(red: 0.8162143826, green: 0.8097243905, blue: 0.8210921884, alpha: 1))).cornerRadius(10)
                    }
                }
            }.frame(width: 330)
        }.padding(15).background(Color.white).cornerRadius(30)
    }
}

struct FoodKonten: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing:20) {
                KontenFood(image: "food1", name: "Rempeyek - Desa", deskripsi: "makanan terdiri dari tepung dan kacang")
                KontenFood(image: "food2", name: "Nasi Uduk - Ayam", deskripsi: "nasi uduk dengan ayam pilihan")
                KontenFood(image: "food3", name: "Soto - Ayam", deskripsi: "soto ayam kampung yang lezat")
                KontenFood(image: "food4", name: "Soto Lamongan", deskripsi: "soto asli dari lamongan")
            }.padding([.leading, .trailing], 30)
        }.padding(.bottom, 25)
    }
}

struct SecondTitle: View {
    var body: some View {
        HStack {
            Text("Explore Catagories").font(.system(size: 18, weight: .bold, design: .rounded)).padding(.leading, 30)
            Spacer()
            Text("Show all").font(.system(size: 12, weight: .bold, design: .rounded)).foregroundColor(Color.red).padding(.trailing, 30)
            
        }
    }
}

struct Icon: View {
    var name: String
    var icon: String
    var color: Color
    
    var body: some View {
        Button(action: {}){
            VStack {
                Image(self.icon).resizable().frame(width: 60, height: 60)
                Text(self.name).font(.system(size: 18, weight: .bold, design: .rounded)).foregroundColor(Color.black)
                Text("2215 Places").font(.system(size: 14, weight: .light, design: .rounded))
            }.padding([.leading, .trailing], 30)
                .padding([.top,.bottom])
                .background(self.color)
                .foregroundColor(Color.white)
                .cornerRadius(15)
        }
    }
}

struct Kategori: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack {
                Icon(name: "Sarapan", icon: "breakfast", color: Color(#colorLiteral(red: 1, green: 0.2276723683, blue: 0.5532330871, alpha: 0.8470588235)))
                Icon(name: "Makan Siang", icon: "burger", color: Color(#colorLiteral(red: 0.3479781151, green: 0.5678477883, blue: 1, alpha: 0.8470588235)))
                Icon(name: "Cemilan", icon: "donut", color: Color(#colorLiteral(red: 0, green: 1, blue: 0.1566671729, alpha: 0.8470588235)))
                Icon(name: "Olahan Telur", icon: "egg", color: Color(#colorLiteral(red: 0, green: 1, blue: 1, alpha: 0.8470588235)))
                Icon(name: "Olahan Soup", icon: "soup", color: Color(#colorLiteral(red: 0.1825684607, green: 0.3112379611, blue: 1, alpha: 0.8470588235)))
                Icon(name: "Minuman", icon: "yogurt", color: Color(#colorLiteral(red: 0.4269120097, green: 1, blue: 0.2947830558, alpha: 0.8470588235)))
            }.padding([.leading, .trailing], 30)
        }
    }
}

struct ThirdTitle: View {
    var body: some View {
        HStack {
            Text("Recomended").font(.system(size: 18, weight: .bold, design: .rounded)).padding(.leading, 30)
            Spacer()
            Text("Show all").font(.system(size: 12, weight: .bold, design: .rounded)).foregroundColor(Color.red).padding(.trailing, 30)
            
        }
    }
}

struct SecondFood: View {
    var image : String
    var name: String
    var deskripsi: String
    var body: some View {
        ZStack {
            VStack(alignment: .leading){
                Image(self.image).resizable().aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/).frame(width: 330, height: 200).clipped().cornerRadius(15)
                Text(self.name).font(.system(size: 18, weight: .bold, design: .rounded))
                Text(self.deskripsi).font(.system(size: 14, weight: .light, design: .rounded)).foregroundColor(Color.secondary)
                
                VStack(alignment: .leading) {
                    HStack {
                        Image(systemName: "star.fill").resizable().frame(width: 20, height: 20).foregroundColor(Color.yellow)
                        Image(systemName: "star.fill").resizable().frame(width: 20, height: 20).foregroundColor(Color.yellow)
                        Image(systemName: "star.fill").resizable().frame(width: 20, height: 20).foregroundColor(Color.yellow)
                        Image(systemName: "star.fill").resizable().frame(width: 20, height: 20).foregroundColor(Color.yellow)
                    }
                }
            }.frame(width: 330)
        }.padding(15).background(Color.white).cornerRadius(30)
    }
}

struct Secondfood: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing:20) {
                KontenFood(image: "nasi goreng", name: "Nasi Goreng - Rumah", deskripsi: "Dibuat seperti masakan ibu")
                KontenFood(image: "nasi ayam", name: "Nasi Uduk - Ayam Mentega", deskripsi: "nasi uduk dengan ayam pilihan dan mentega")
            }.padding([.leading, .trailing], 30)
        }.padding(.bottom, 25)
    }
}
