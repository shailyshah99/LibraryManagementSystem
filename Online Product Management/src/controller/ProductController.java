package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import productDAO.ProDAO;
import productVO.Product;


/**
 * Servlet implementation class ProductController
 */
@WebServlet("/ProductController")
public class ProductController extends HttpServlet {

	public ProductController() {
		super();

	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		try {
			String f = (String) request.getParameter("flag");
			
			if (f != null) {
				if (f.equals("insert")) {
					String s1 = (String) request.getParameter("pname");
					String s2 = (String) request.getParameter("category");
					
					float f1 = Float.parseFloat(request.getParameter("price"));
					Product p1 = new Product(s1, s2, f1);
					ProDAO r1 = new ProDAO();
					r1.insert(p1);
					response.sendRedirect("header.jsp");
				}
			}
			if (f.equals("showdata")) {
				ProDAO r1 = new ProDAO();

				List<Product> ls = new ArrayList<Product>();
				ls = r1.showdata();

				session.setAttribute("list", ls);
				response.sendRedirect("ViewProduct.jsp");
			}

			if (f.equals("search")) {

				String s1 = request.getParameter("search");

				ProDAO r1 = new ProDAO();
				List<Product> ls = new ArrayList<Product>();
				ls = r1.search(s1);
				session.setAttribute("list", ls);

				response.sendRedirect("SearchProduct.jsp");

			}
			if (f.equals("delete")) {
				ProDAO r1 = new ProDAO();
				Product p1 = new Product();
				int id = Integer.parseInt(request.getParameter("id"));
				p1.setId(id);
				r1.delete(p1);
				response.sendRedirect("ProductController?flag=showdata");

			}

			if (f.equals("update")) {

				Product p1 = new Product();
				int id = Integer.parseInt(request.getParameter("id"));
				session.setAttribute("id", id);
				response.sendRedirect("Editdata.jsp");

			}

			if (f.equals("edit")) {
				String s1 = (String) request.getParameter("pname");
				String s2 = (String) request.getParameter("category");
				float f1 = Float.parseFloat(request.getParameter("price"));
				ProDAO r1 = new ProDAO();
				int id = (Integer) session.getAttribute("id");
				Product p1 = new Product(id,s1,s2,f1);

				r1.update(p1);
				response.sendRedirect("ProductController?flag=showdata");
			}
		} catch (Exception e) {
			System.out.println(e);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
