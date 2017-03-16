package controller;

import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.web.context.WebApplicationContext;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "StateControllerTests-context.xml" })
@WebAppConfiguration

public class ShoeControllerTest {
	MockMvc mockMvc;
	
	@Autowired
	WebApplicationContext wc;
	
	@Autowired
	ShoeFinderController controller;
	
	MockShoeDAO mockDAO;
	
	@Before
	public void setup(){
		mockDAO = wc.getBean(MockShoeDAO.class);
		controller.setshoeDAO(mockDAO);
		this.mockMvc = MockMvcBuilders.webAppContextSetup(wc).build();
		
	}
	
	@Test
	public void testGet_GetShoe
	
	
	

}
