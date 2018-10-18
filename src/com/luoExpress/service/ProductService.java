package com.luoExpress.service;

import java.sql.SQLException;
import java.util.List;

import com.luoExpress.dao.ProductDao;
import com.luoExpress.domain.Product;

public class ProductService {

	public List<Product> findAllProduct() throws SQLException{
		// TODO Auto-generated method stub
		ProductDao dao = new ProductDao();
		List<Product>productList = dao.findAllProduct();
		return productList;
	}

}
