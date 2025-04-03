isolated function getProductInfo(string productName) returns string {
    match productName {
        "laptop" => {
            return "Our standard laptop features 16GB RAM, 512GB SSD, and an Intel i5 processor. Price: $999";
        }
        "smartphone" => {
            return "Our flagship smartphone has a 6.5-inch OLED display, 128GB storage, and 48MP camera. Price: $799";
        }
        "tablet" => {
            return "Our tablet comes with a 10-inch display, 64GB storage, and 10-hour battery life. Price: $499";
        }
        _ => {
            return "Product not found in our catalog";
        }
    }
}

isolated function checkAvailability(string productName) returns string {
    match productName {
        "laptop" => {
            return "In stock: 12 units available for immediate shipping";
        }
        "smartphone" => {
            return "Limited stock: 5 units available. Order soon!";
        }
        "tablet" => {
            return "Out of stock. Expected restock in 2 weeks";
        }
        _ => {
            return "Product not found in our inventory system";
        }
    }
}
