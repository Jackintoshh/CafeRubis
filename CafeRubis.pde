void setup()
{
  size(800,600);
  loadData();
  printProducts();
  //displayProducts();
}

ArrayList<Product> products = new ArrayList<Product>();
ArrayList<Product> bill = new ArrayList<Product>();
float px = 50;
float py = 50;

void loadData()
{
  
  Table table = loadTable("labtest.csv", "header");
  
  for(TableRow r:table.rows())
  {
    Product product = new Product(r);
    products.add(product);
  }
}

void printProducts()
{
  for(Product p:products)
  {
    println(p.name);
    println(p.price);
  }
  //displayProducts();
}

void draw()
{
  background(100);
  displayProducts();
}

void displayProducts()
{
  
  for(Product p:products)
  {
    for (float i = py; i<height; i++)
    {
    stroke(255);
   
    //textAlign(LEFT);
    fill(255);
    textSize(25);
    text(p.name, px, py);
    i = i+20;
    }
  }
}






  
 