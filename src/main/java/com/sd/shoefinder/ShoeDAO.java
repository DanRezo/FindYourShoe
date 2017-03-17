package com.sd.shoefinder;

import java.util.List;

public interface ShoeDAO {
	public Shoe getShoesByBrand(String brand);
	public Shoe getShoesByName(String name);
	public List<Shoe> getShoesByRun(String run);
	public List<Shoe> getShoesByType(String type);
	public void addNewShoe(Shoe shoe);
	public List<Shoe> removeBrand(Shoe brand);
	
	
	
	
	public List<Shoe> getAllShoes();

}
