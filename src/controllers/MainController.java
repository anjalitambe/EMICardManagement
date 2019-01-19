package controllers;

import java.io.IOException;
import java.sql.Blob;
import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.hibernate.Hibernate;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;



import model.Address;
import model.Admin;
import model.Bank;
import model.Customer;
import model.EMICard;
import model.Product;
import service.AdminService;
import service.CustomerService;
import service.IProductService;


@Controller
@SessionAttributes(value = "sessionuser")
public class MainController {
	
	private IProductService productService;

	public IProductService getProductService() {
		return productService;
	}
	@Autowired
	public void setProductService(IProductService productService) {
		this.productService = productService;
	}
	@Autowired
	SessionFactory sf;
	
	
	private CustomerService customerService;
	@Autowired
	public void setCustomerService(CustomerService customerService) {
		this.customerService = customerService;
	}


  
	private AdminService adminService;
	@Autowired
	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}




	

	
	
	// FOR LOGIN AND LOGIN FORM
	@RequestMapping(value = "/Login", method = RequestMethod.GET)
	public String indexes() {
		return "login";
	}
	

		/*i changed here!!!!!!!!!*/
		@RequestMapping(value = "/LoginForms", method = RequestMethod.POST)
		public ModelAndView loginpro1(HttpServletRequest request, HttpServletResponse response,
				HttpSession session,	@ModelAttribute("login") Customer u, BindingResult result, Model model, EMICard e) {
			ModelAndView mav = null;
			String username=request.getParameter("email");
			String password=request.getParameter("password");
			System.out.println("Username is: "+ username+ " Password is: "+password);
			if(customerService.verifyUser(username,password))
			{
				mav = new ModelAndView("dashboard");
				Customer customer = customerService.getCustomer(username, password);//new code
				session.setAttribute("customerobj", customer);
				//whatever you want to display add here
				session.setAttribute("firstName", customer.getFirstName());//new code
				session.setAttribute("lastName", customer.getLastName());
				session.setAttribute("cardType", customer.getCard().getCardType());
				session.setAttribute("validDate",customer.getCard().getValidDate());
				session.setAttribute("activated",customer.getCard().getActivated());
				session.setAttribute("cardID",customer.getCard().getCardID());
			
				
				session.setAttribute("balance",customer.getBank().getBalance());
			session.setAttribute("credits",customer.getCard().getCredits());
				session.setAttribute("remaingCredits",customer.getCard().getRemaingCredits());
			
//				
				
				int cred = customer.getCard().getCredits();
				int remaingCred = customer.getCard().getRemaingCredits();
				
				int usedCredits = cred - remaingCred;
				session.setAttribute("usedCredits", usedCredits);
				
				
				
				//session.setAttribute("usedCredits",);
				//calculate used credits
				
				
				System.out.println("Username is: "+ username+ " Password is: "+password);
				
			}
			else
			{
				mav = new ModelAndView("loginerror");
			}
			return mav;
			}
		
		
		//FOR ADMIN LOGIN 
		@RequestMapping(value = "/Admin", method = RequestMethod.GET)
		public String adminLog(Model model) {
		model.addAttribute("admin",new Admin());
		return "adminLogin";
		}
		
		
		//FROM ADMIN LOGIN FORM

		@RequestMapping(value = "/AdminForms", method = RequestMethod.POST)
		public ModelAndView loginpro(HttpServletRequest request, HttpServletResponse response,
		@ModelAttribute("admin") Admin u, BindingResult result, Model model) {
		ModelAndView mav = null;
		String adminName=request.getParameter("adminName");
		String password=request.getParameter("password");
		//System.out.println("Admin Username is: "+ adminName+ " Admin Password is: "+password);
		if(adminService.verifyUser1(adminName,password))
		{
		//System.out.println("Admin Username is: "+ adminName+ " Admin Password is: "+password);
		mav = new ModelAndView("admindashboard");   
		//System.out.println("Admin Username is: "+ adminName+ " Admin Password is: "+password);
		}
		else
		{
		//System.out.println("Admin Username is: "+ adminName+ " Admin Password is: "+password);
		mav = new ModelAndView("loginerror");
		}
		//System.out.println("Admin Username is: "+ adminName+ " Admin Password is: "+password);



		// adminService.verifyUser1(adminName,password);
		// mav = new ModelAndView("loginsuccess");   
		return mav;

		}  
		
		 //adminproduct
		 @RequestMapping(value = "/AdminProduct", method = RequestMethod.GET)
			public String adminProduct(Model model) 
			{
				model.addAttribute("customer",new Customer());
				return "adminproduct";
				}
		
		
		
		 //Dashboard
		 @RequestMapping(value = "/Dashboard", method = RequestMethod.GET)
			public String userDashboard(Model model) 
			{
				model.addAttribute("customer",new Customer());
				return "dashboard";
				}
		
		
//		BANASHREE'S CODE
//	@RequestMapping(value = "/LoginForms", method = RequestMethod.POST)
//	public ModelAndView loginpro(HttpServletRequest request, HttpServletResponse response,
//	@ModelAttribute("login") Customer u, BindingResult result, Model model) {
//		ModelAndView mav = null;
//		String username=request.getParameter("email");
//		String password=request.getParameter("password");
//		System.out.println("Username is: "+ username+ " Password is: "+password);
//		if(customerService.verifyUser(username,password))
//		{
//			mav = new ModelAndView("loginsuccess");   	
//		}
//		else
//		{
//			mav = new ModelAndView("loginerror");
//		}
//		return mav;
//		}
//	

	
	
	//FOR REGISTRATION AND REGISTRATION FORM
	@RequestMapping(value = "/RegisterSpring", method = RequestMethod.GET)
	public String regSpring(Model model) {
		model.addAttribute("customer",new Customer());
		return "register";
		}
	
	 @RequestMapping(value = "/RegisterFormsSpring", method = RequestMethod.POST)
	    public String validateregistrationPage1(@Valid @ModelAttribute("customer") Customer customer,
	    		BindingResult bindingResult,Model model) {
		 	System.out.println(customer);
		 	String card1="Gold";
		 	String card2="Titanium";
		 	
		 	if(customer.getCard().getCardType().equals(card1))
		 	{
		 		customer.getCard().setCredits(400000);
		 		Date validDate= customerService.createValidDate();
		 		customer.getCard().setValidDate(validDate);
		 	}
		 	else if(customer.getCard().getCardType().equals(card2))
		 	{
		 		customer.getCard().setCredits(600000);
		 		Date validDate= customerService.createValidDate();
		 		customer.getCard().setValidDate(validDate);
		 	}
		 	
			double bal = customerService.createBalance();
			customer.getBank().setBalance(bal);
			Date vd = customerService.createValidDate();
			customer.getCard().setValidDate(vd);
		    customerService.addCustomer(customer);
		    return "regSuccess";
	 	}
	 
	 /*i changed here!!!!!!!!!*/
//		// For add and update person both
//			@RequestMapping(value = "/customer/add", 
//					method = RequestMethod.POST)
//			//@ExceptionHandler({ CustomException.class })
//			public String addPerson(
//					@ModelAttribute("customer") 
//					@Valid Customer p, 
//					BindingResult result, 
//					Model model) {
//				System.out.println(result.toString());
//				if (!result.hasErrors()) {
//					if (p.getCustomerId() == null) {
//						// new person, add it
//						this.customerService.addCustomer(p);
//					} else {
//						// existing person, call update
//						this.customerService.updateCustomer(p);
//					}
//					return "redirect:/adminDashBoard";
//				}
//				model.addAttribute("getAllCustomers", this.customerService.getAllCustomers());
//				return "adminDashBoard";
//
//			}	
			
			
			@RequestMapping(value="/Logout",method = RequestMethod.GET)
			public String logout(HttpSession session){
				session.invalidate();
				
				return "logoutSucess";
			}
			
			
			@RequestMapping(value = "/Product", method = RequestMethod.GET)
			public String redirectToProducts(Model model) {
				model.addAttribute("customer",new Customer());
				return "product";
			}
			
			@RequestMapping(value = "/Product-Detail", method = RequestMethod.GET)
			public String redirectToProductDets(HttpServletRequest request, HttpServletResponse response,
					HttpSession session,Customer u, BindingResult result, Model model, EMICard e) {
				
				Customer c= (Customer) session.getAttribute("customerobj");
			  System.out.println("Customer in product is:"+c);

				session.setAttribute("firstName", c.getFirstName());//new code
				session.setAttribute("lastName", c.getLastName());
				session.setAttribute("cardType", c.getCard().getCardType());
				session.setAttribute("validDate",c.getCard().getValidDate());
				session.setAttribute("activated",c.getCard().getActivated());
				session.setAttribute("cardID",c.getCard().getCardID());
				
				session.setAttribute("balance",c.getBank().getBalance());
				return "product-detail";
			}
			
			@RequestMapping(value = "/BuyNow", method = RequestMethod.GET)
			public String redirectToPayment() {
				return "payment";
			}
			
			
			 //Successpayment
			 @RequestMapping(value = "/SuccessPayment", method = RequestMethod.GET)
				public String paymentsuccessful(Model model) 
				{
					model.addAttribute("customer",new Customer());
					return "successpayment";
					}
			
			
			 
				

				
				
				
				//ADDING A PRODUCT
				@RequestMapping(value = "AddProduct")
				public String getProductForm(Model model) {		
					model.addAttribute("product",new Product());
					return "addProduct";
				}
				@RequestMapping(value = "addProductForms", method = RequestMethod.POST)
				public String addingProduct(@ModelAttribute("product") @Valid Product prod, BindingResult result,
					@RequestParam("productImage") MultipartFile file, Model model) {
//					// Binding Result is used if the form that has any error then it will
//					// redirect to the same page without performing any functions
////					if (result.hasErrors()) {
					
////						return "addProduct";}
				System.out.println(result.toString());
					System.out.println("File:" + file.getName());
					System.out.println("ContentType:" + file.getContentType());
//					
					try {
							byte[ ] b =file.getBytes();	
							Session session = sf.openSession();
							Blob blob= Hibernate.getLobCreator(session).createBlob(b);
							
						
					} catch (IOException e) {
						e.printStackTrace();
					}
			System.out.println(result.toString());
			System.out.println("product being added :" + prod);
				productService.addProduct(prod);
//				Path path = Paths
//					.get( "D:/EMI Repos/EMICardManagement1/WebContent/resources/img/products/"
//								+ prod.getProductName() + ".jpg");
			//	
//				MultipartFile image = (MultipartFile) prod.getProductImage();
//				try {
//					image.transferTo(new File(path.toString()));
//					//image.transferTo(new File(path.toString()));
//					
//				} catch (IllegalStateException e) {
//					e.printStackTrace();
//				} catch (IOException e) {
//					
//					e.printStackTrace();
//				}
				
				
				
				
				
//					MultipartFile image = prod.getProductImage();
//					if (image != null && !image.isEmpty()) {
//						Path path = Paths
//							.get( "D:/EMI Repos/EMICardManagement1/WebContent/resources/img/products"
//										+ prod.getProductId() + ".jpg");
			//
//					try {
//						image.transferTo(new File(path.toString()));
//					} catch (IllegalStateException e) {
//						e.printStackTrace();
//					} catch (IOException e) {
//						// TODO Auto-generated catch block
//						e.printStackTrace();
//					}

					
					return "redirect:/ListProducts";
					
				}
				
				
				
				
				@RequestMapping("ListProducts") 
				public ModelAndView getAllProducts() {
					  List<Product> products = productService.getAllProducts(); 
					  return new ModelAndView("productList", "products", products);
					  }

				

				
//				@RequestMapping(value = "/admin/editProduct", method = RequestMethod.POST)
//				public String editProduct(@ModelAttribute(value = "editProductObj") Product product) {
//					System.out.println("here");
//					productService.editProduct(product);
//					return "redirect:/productList";
//				}
				
//				@RequestMapping(value = "/editProductbyAdmin",method = RequestMethod.POST)
//				public String editprod(@ModelAttribute("editProductObj") Product product, BindingResult r) {
//					System.out.println(r.toString());
//					productService.editProduct(product);
//					return "productList";	
//						}
				
				
				//EDIT PRODUCT BY ADMIN
				@RequestMapping(value = "/admin/product/editProduct/{productId}")
				public ModelAndView getEditForm(@PathVariable(value = "productId") Integer productId) {
					Product product = productService.getProductById(productId);
					System.out.println("ghhh");
					return new ModelAndView("editProduct", "editProductObj", product);
				}
				
				
				
				@RequestMapping(value = "/trying",method = RequestMethod.POST)
				public String trying(@ModelAttribute("editProductObj") Product p,BindingResult r) {
					System.out.println(r.toString());
					System.out.println(p);
					productService.editProduct(p);
					return "redirect:/ListProducts";
					
				}
				
				
				
				//DELETING A PRODUCT BY ADMIN
				
				@RequestMapping("admin/product/delete/{productId}")
				public String deleteProduct(@PathVariable(value = "productId") Integer productId) {

			//	
//					Path path = Paths.get("C:/Users/Ismail/workspace/ShoppingCart/src/main/webapp/WEB-INF/resource/images/products/"
//							+ productId + ".jpg");
			//
//					if (Files.exists(path)) {
//						try {
//							Files.delete(path);
//						} catch (IOException e) {
//							e.printStackTrace();
//						}
//					}

					productService.deleteProduct(productId);
					
					return "redirect:/ListProducts";
				}

			
			
			
		}
	 
 
	 
	
