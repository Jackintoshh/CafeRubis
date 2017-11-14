class Product
{
  String name;
  Float price;
 // float px = 50;
  //float py = 50;
  
  Product(TableRow row)
  {
    name = row.getString("Name");
    price = row.getFloat("Price");
  }
}