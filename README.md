# Summary
A Java web-app developed on eclipse using the Spring Tool Suite which allows users to utilize CRUD operations on a shoe list.

<p align="center"><img src="src/main/webapp/ShoePics/Screen1.png" height="350">
<img src="src/main/webapp/ShoePics/Screen2.png" height="350"></p>

## In This Document
1. [How to Execute](#how-to-execute)

## How to Execute
- The web-app is hosted on: insert URL <a href="http://danrezo.com:8080/ShoeFinderWeb/">**here**</a>
- Download the entire program as a .war file <a href="ShoeFinderWeb.war">**here**</a>

## Stories

## Instructions
1. User arrives on landing page.
2. User can  follow link to Brooks Running for general information on running style.
3. User can click on a logo of the shoe brands located in the footer to see a list of shoes
4. Information is displayed on the given brand:
  - Run Fast neutral shoes made for "everyday runs"
  - Run Far Neutral shoes made for longer runs, usually more than 12 miles.
  - Run Stable Stability shoes made to correct over-pronation, the inward roll of the ankles during stress.
  - Run True Stability shoes made to correct over-pronation during longer runs.
5. User has the ability to  see CRUD operations in use by:
  - Removing shoes form list.
  - Editing a shoe on the list.
  - Adding a new shoe to the list.
6. User can also click on the drop down menu to filter shoes by:

   - Category
     - Neutral
     - Stability
   - Run Style
     - Run Fast
     - Run Far
     - Run Stable
     - Run True
     
## Example
```
@Override
	public void editShoe(Shoe shoe) {
		int index = 0;
		for (Shoe shoeBrand : shoes) {
			if (shoeBrand.getPicture().equals(shoe.getPicture())) {
				index = shoes.indexOf(shoeBrand);
				break;

			}
		}
		Shoe s = shoes.get(index);
		s.setBrand(shoe.getBrand());
		s.setName(shoe.getName());
		s.setRun(shoe.getRun());
		s.setType(shoe.getType());
		shoes.set(index, s);
	}
  ```
  #### Breakdown
In order to edit the shoe I dade to search for shoes based on the brand first. The ForEach loop was used to iterate over all the shoes and I used the int variable index as a placeholder. Once the shoe was found the properties of the shoe can be changed and the index[0] is set with the new information sent.

## Reflection
This was the first full crud project I completed. This simple CRUD application built with Java, Spring MVC, HTML and CSS helped reinforce the lesson thought during week 7. Looking back at the code I can see that poor naming was used while coming up with the logic which makes it difficult to really tell what the code is doing. Also, I could have initially sorted the shoes a different way than with the logo picture. If you click on logo, only the shoes particular to that brand will show up. This is why I decided to be able to edit shoes based on the images matching. 
