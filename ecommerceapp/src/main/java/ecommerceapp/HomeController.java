package ecommerceapp;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	@Autowired
	private EntityManager em;

	@RequestMapping("/saveproduct")
	public ModelAndView create(@RequestParam String name, @RequestParam double price, @RequestParam String brand,
			@RequestParam int rating, @RequestParam String description) {
		ModelAndView mv = new ModelAndView();

		Product p = new Product(0, name, price, brand, rating, description);

		EntityTransaction et = em.getTransaction();
		et.begin();
		System.out.println(em.merge(p));
		et.commit();
		mv.addObject("msg", "Product saved successfully");
		mv.setViewName("index.jsp");
		return mv;
	}

	@RequestMapping("/all")
	public ModelAndView viewall() {
		ModelAndView mv = new ModelAndView();

		Query q = em.createQuery("from Product");
		List<Product> products = q.getResultList();

		mv.setViewName("allproducts.jsp");
		mv.addObject("products", products);
		return mv;
	}

	@RequestMapping("/delete")
	public ModelAndView deleteproduct(@RequestParam int id) {
		ModelAndView mv = new ModelAndView();

		Product p = em.find(Product.class, id);

		if (p != null) {
			EntityTransaction et = em.getTransaction();
			et.begin();
			em.remove(p);
			et.commit();
			mv.setViewName("index.jsp");
			mv.addObject("msg", "Product deleted successfully");
		} else {
			mv.setViewName("index.jsp");
			mv.addObject("msg", "Unable to delete the product");
		}
		return mv;
	}

	@RequestMapping("/updatepage")
	public ModelAndView updateproduct(@RequestParam int id) {
		ModelAndView mv = new ModelAndView();

		Product p = em.find(Product.class, id);

		if (p != null) {
			mv.setViewName("update.jsp");
			mv.addObject("p", p);
		} else {
			mv.setViewName("index.jsp");
			mv.addObject("msg", "Unable to update the product");
		}
		return mv;
	}
	
	@RequestMapping("/update")
	public ModelAndView update(@RequestParam int id, @RequestParam String name, @RequestParam double price, @RequestParam String brand,
			@RequestParam int rating, @RequestParam String description)
	{
		ModelAndView mv = new ModelAndView();

		Product p = em.find(Product.class, id);

		if (p != null) {
			p.setName(name);
			p.setPrice(price);
			p.setBrand(brand);
			p.setRating(rating);
			p.setDescription(description);
			
			EntityTransaction et = em.getTransaction();
			et.begin();
			System.out.println(em.merge(p));
			et.commit();
			
			mv.addObject("msg","Product Updated successfully");
			mv.setViewName("index.jsp");
		} else {
			mv.setViewName("index.jsp");
			mv.addObject("msg", "Unable to update the product");
		}
		return mv;
	}
}
