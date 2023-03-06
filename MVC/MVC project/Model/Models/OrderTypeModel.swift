import UIKit

let json = """
[
{
    "img": "phones",
    "orderLabel": "Smartphones"
},
{
    "img": "laptops",
    "orderLabel": "Laptops"
},

{
    "img": "fragrances",
    "orderLabel": "Fragrances"
},

{
    "img": "grocery",
    "orderLabel": "Groceries"
},

{
    "img": "home-decoration",
    "orderLabel": "Home-decoration"
},

{
    "img": "skincare",
    "orderLabel": "Skincare"
}
]
"""

struct OrderTypeModel: Codable {
    let img: String
    let orderLabel: String
    
    
    
}

struct OrderModel: Codable {
    
    var modelOrder: [OrderTypeModel]
    
    
    
}
