package sales;

public class Sales {
	Product product;
	
	public void setProduct(Product product)
	{
		this.product=product;
	}
	public Product getProduct()
	{
		return product;
	}
	@Override
	public String toString()
	{
		return "Name "+this.product.getName()+"|Price: "+this.product.getPrice();
	}
	
}
