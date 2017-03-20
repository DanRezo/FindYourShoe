package com.sd.shoefinder;

import java.util.List;

public interface ShoeDAO {
	public List<Shoe> getShoesByBrand(String brand);

	public Shoe getShoesByName(String name);

	public List<Shoe> getShoesByRun(String run);

	public List<Shoe> getShoesByType(String type);

	public void addNewShoe(Shoe shoe);

	public void deleteShoe(String name);

	public void removeBrand(Shoe shoe);
	public void editShoe(Shoe shoe);


	public List<Shoe> getAllShoes();

}
