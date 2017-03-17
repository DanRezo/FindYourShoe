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
				String brand = tokens[0];
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
	public Shoe getShoesByBrand(String brand) {
		Shoe s = null;
		for (Shoe shoeb : shoes) {
			if (shoeb.getBrand().equals(brand)) {
				s = shoeb;
				break;
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
	public void deleteShoe(Shoe shoe) {

	}

	@Override
	public void removeBrand(Shoe brand) {
		for (Shoe shoe : shoes) {
			if (shoe.getBrand().equals(brand)) {
				shoes.removeAll(shoes);
			}
		}

	}

	@Override
	public List<Shoe> getAllShoes() {
		List<Shoe> tempShoe = shoes;
		return tempShoe;
	}
}
