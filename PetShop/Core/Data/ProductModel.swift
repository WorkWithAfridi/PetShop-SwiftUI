//
//  ProductModel.swift
//  PetShop
//
//  Created by Khondakar Afridi on 12/15/23.
//

import Foundation

class ProductModel : Identifiable{
    var id: UUID = UUID()
    var title: String?
    var imageUrl: String?
    var description: String?
    var price: String?
    var offset: CGFloat?
    var isSwiped: Bool?
    
    init(title: String, description: String, imageUrl: String, price: String) {
        self.title = title
        self.description = description
        self.imageUrl = imageUrl
        self.price = price
        self.offset = 0
        self.isSwiped = false
    }
}

var demoProductList = [
    ProductModel(title: "Chicken Treats", description: "Cillum enim ex eu sint dolore. Pariatur reprehenderit esse sit anim ea. Ad laboris aliqua ullamco aute. Sit aliqua sint exercitation laboris laborum pariatur in. Excepteur ad consequat elit consectetur et commodo magna. Anim dolor ullamco nisi laboris. Enim aute amet amet cupidatat Lorem deserunt eiusmod exercitation.", imageUrl: "https://images.unsplash.com/photo-1571873735645-1ae72b963024?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", price: "55"),
    ProductModel(title: "Dutchers Dog food", description: "Cillum enim ex eu sint dolore. Pariatur reprehenderit esse sit anim ea. Ad laboris aliqua ullamco aute. Sit aliqua sint exercitation laboris laborum pariatur in. Excepteur ad consequat elit consectetur et commodo magna. Anim dolor ullamco nisi laboris. Enim aute amet amet cupidatat Lorem deserunt eiusmod exercitation.", imageUrl: "https://images.unsplash.com/photo-1597843786186-826cc3489f56?q=80&w=1528&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", price: "85"),
    ProductModel(title: "Holy Grains", description: "Cillum enim ex eu sint dolore. Pariatur reprehenderit esse sit anim ea. Ad laboris aliqua ullamco aute. Sit aliqua sint exercitation laboris laborum pariatur in. Excepteur ad consequat elit consectetur et commodo magna. Anim dolor ullamco nisi laboris. Enim aute amet amet cupidatat Lorem deserunt eiusmod exercitation.", imageUrl: "https://images.unsplash.com/photo-1543308485-b743d7f6dd8d?q=80&w=1476&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", price: "25"),
    ProductModel(title: "Chicken Treats", description: "Cillum enim ex eu sint dolore. Pariatur reprehenderit esse sit anim ea. Ad laboris aliqua ullamco aute. Sit aliqua sint exercitation laboris laborum pariatur in. Excepteur ad consequat elit consectetur et commodo magna. Anim dolor ullamco nisi laboris. Enim aute amet amet cupidatat Lorem deserunt eiusmod exercitation.", imageUrl: "https://images.unsplash.com/photo-1571873735645-1ae72b963024?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", price: "55"),
    ProductModel(title: "Dutchers Dog food", description: "Cillum enim ex eu sint dolore. Pariatur reprehenderit esse sit anim ea. Ad laboris aliqua ullamco aute. Sit aliqua sint exercitation laboris laborum pariatur in. Excepteur ad consequat elit consectetur et commodo magna. Anim dolor ullamco nisi laboris. Enim aute amet amet cupidatat Lorem deserunt eiusmod exercitation.", imageUrl: "https://images.unsplash.com/photo-1597843786186-826cc3489f56?q=80&w=1528&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", price: "85"),
    ProductModel(title: "Chicken Treats", description: "Cillum enim ex eu sint dolore. Pariatur reprehenderit esse sit anim ea. Ad laboris aliqua ullamco aute. Sit aliqua sint exercitation laboris laborum pariatur in. Excepteur ad consequat elit consectetur et commodo magna. Anim dolor ullamco nisi laboris. Enim aute amet amet cupidatat Lorem deserunt eiusmod exercitation.", imageUrl: "https://images.unsplash.com/photo-1571873735645-1ae72b963024?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", price: "55"),
    ProductModel(title: "Dutchers Dog food", description: "Cillum enim ex eu sint dolore. Pariatur reprehenderit esse sit anim ea. Ad laboris aliqua ullamco aute. Sit aliqua sint exercitation laboris laborum pariatur in. Excepteur ad consequat elit consectetur et commodo magna. Anim dolor ullamco nisi laboris. Enim aute amet amet cupidatat Lorem deserunt eiusmod exercitation.", imageUrl: "https://images.unsplash.com/photo-1597843786186-826cc3489f56?q=80&w=1528&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", price: "85"),
    ProductModel(title: "Holy Grains", description: "Cillum enim ex eu sint dolore. Pariatur reprehenderit esse sit anim ea. Ad laboris aliqua ullamco aute. Sit aliqua sint exercitation laboris laborum pariatur in. Excepteur ad consequat elit consectetur et commodo magna. Anim dolor ullamco nisi laboris. Enim aute amet amet cupidatat Lorem deserunt eiusmod exercitation.", imageUrl: "https://images.unsplash.com/photo-1543308485-b743d7f6dd8d?q=80&w=1476&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", price: "25"),
    ProductModel(title: "Holy Grains", description: "Cillum enim ex eu sint dolore. Pariatur reprehenderit esse sit anim ea. Ad laboris aliqua ullamco aute. Sit aliqua sint exercitation laboris laborum pariatur in. Excepteur ad consequat elit consectetur et commodo magna. Anim dolor ullamco nisi laboris. Enim aute amet amet cupidatat Lorem deserunt eiusmod exercitation.", imageUrl: "https://images.unsplash.com/photo-1543308485-b743d7f6dd8d?q=80&w=1476&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", price: "25"),
]
