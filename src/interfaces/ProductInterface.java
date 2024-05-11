package interfaces;

import java.util.List;

import entidades.Product;

public interface ProductInterface {
	public int createProduct(Product product);

	public List<Product> listProduct();

	public Product getProduct(String id);

	public int updateProduct(Product product);

	public int deleteProduct(String id);
}
