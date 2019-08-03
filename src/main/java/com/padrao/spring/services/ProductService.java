package com.padrao.spring.services;

import com.padrao.spring.entities.Product;

public interface ProductService {
	
	public Iterable<Product>findAll();
	
}
