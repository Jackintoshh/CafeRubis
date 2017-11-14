void setup()
{
  size(800,600);
  loadData();
}

ArrayList<Product> products = new ArrayList<Product>();
ArrayList<Product> bill = new ArrayList<Product>();

void loadData()
{
  
  Table table = loadTable("labtest.csv", "header");
  
  for(TableRow r:table.rows())
  {
    Product product = new Product(r);
    products.add(product);
  }
}






  
 