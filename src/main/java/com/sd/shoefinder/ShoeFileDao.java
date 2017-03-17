package com.sd.shoefinder;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.servlet.ServletContext;

public class ShoeFileDao implements ShoeDAO {
	private static final String filename = "WEB-INF/shoes.txt";
	private ServletContext servletContext;
	private List<Shoe> shoes;

	public ShoeFileDao(ServletContext context) {
		servletContext = context;
		shoes = new ArrayList<>();
	}

	@PostConstruct
	private void init() {
		// Retrieve an input stream from the servlet context
		// rather than directly from the file system
		InputStream is = servletContext.getResourceAsStream(filename);
		try (BufferedReader buf = new BufferedReader(new InputStreamReader(is))) {
			String line;
			while ((line = buf.readLine()) != null) {
				String[] tokens = line.split("/ ");
				String brand = tokens[1];
				String name = tokens[2];
				String type = tokens[3];
				String run = tokens[4];
				String picture = tokens[5];
				shoes.add(new Shoe(brand, name, type, run, picture));
			}
		} catch (Exception e) {
			System.err.println(e);
		}
	}

	@Override
	public List<Shoe> getShoesByBrand(String brand) {
		List<Shoe> s = new ArrayList<>();
		for (Shoe shoeb : shoes) {
			System.out.println(shoeb.getName());
			if (shoeb.getBrand().equals(brand)) {
				s.add(shoeb);
			}

		}
		return s;
	}

	@Override
	public Shoe getShoesByName(String name) {
		Shoe s = null;
		for (Shoe shoen : shoes) {
			if (shoen.getName().equals(name)) {
				s = shoen;
				break;
			}
		}
		return s;
	}

	@Override
	public List<Shoe> getShoesByRun(String run) {
		List<Shoe> shoeByRun = new ArrayList<>();
		for (Shoe shoer : shoes) {
			if (shoer.getRun().equals(run)) {
				shoeByRun.add(shoer);
			}

		}
		return shoeByRun;
	}

	@Override
	public List<Shoe> getShoesByType(String type) {
		List<Shoe> shoeByType = new ArrayList<>();
		for (Shoe shoet : shoes) {
			if (shoet.getType().equals(type)) {
				shoeByType.add(shoet);
			}
		}
		return shoeByType;
	}

	@Override
	public void addNewShoe(Shoe shoe) {
		shoes.add(shoe);
	}

	@Override
	public void deleteShoe(String name) {
		int index = 0;
		for (Shoe shoe2 : shoes) {
			if (shoe2.getName().equals(name)) {
				index = shoes.indexOf(shoe2);
				break;
			}
		}
		shoes.remove(index);
	}

	@Override
	public void removeBrand(Shoe brand) {
		int index = 0;
		for (Shoe shoeBrand : shoes) {
			if (shoeBrand.getBrand().equals(brand)) {
				index = shoes.indexOf(shoeBrand);
				break;

			}
			shoes.remove(index);
		}
	}
	
	@Override
	public List<Shoe> editShoe(){
	int index = 0;
	for(Shoe shoeEdit: shoes){
		if(shoeEdit.getName().equals(name)){
			shoeEdit.setBrand()
		}
	}

	@Override
	public List<Shoe> getAllShoes() {
		List<Shoe> tempShoe = shoes;
		return tempShoe;
	}
}
