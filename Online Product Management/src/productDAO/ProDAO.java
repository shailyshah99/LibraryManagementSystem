package productDAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import productVO.Product;

public class ProDAO {

	public ProDAO() {
	}

	public void insert(Product p1) {
		try {
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();

			Session session = sessionFactory.openSession();

			Transaction transaction = session.beginTransaction();

			session.save(p1);
			
			transaction.commit();

			session.close();

		} catch (Exception e) {
			System.out.println(e);
		}
	}

	public List<Product> showdata() {
		List<Product> ls = new ArrayList<Product>();
		try {
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();

			Session session = sessionFactory.openSession();

			Transaction transaction = session.beginTransaction();

			Query query = session.createQuery("From Product p");
			

			ls = query.list();
			transaction.commit();

			session.close();
		} catch (Exception e) {
			System.out.println(e);
		}
		return ls;

	}

	public List<Product>search(String s1) {
		List<Product> ls = new ArrayList<Product>();
		try {
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();

			Session session = sessionFactory.openSession();

			Transaction transaction = session.beginTransaction();
		
			
			Query q = session.createQuery(
					"from Product as p where p.name like :n or p.category like :n");
			q.setParameter("n","%"+s1+"%");
			
			ls = q.list();
			transaction.commit();

			session.close();
		} catch (Exception e) {
			System.out.println(e);
		}
		return ls;
	}

	public void delete(Product p1) {
		try {
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();

			Session session = sessionFactory.openSession();

			Transaction transaction = session.beginTransaction();

			Query q = session.createQuery("delete from Product p where p.id='" + p1.getId() + "'");
			q.executeUpdate();
			transaction.commit();

			session.close();

		} catch (Exception e) {
			System.out.println(e);
		}
	}

	public void update(Product p1) {
		try {
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();

			Session session = sessionFactory.openSession();

			Transaction transaction = session.beginTransaction();
			Query q = session.createQuery("update Product p set p.name='"+p1.getName()+"', p.category='"+p1.getCategory()+"', p.price= '"+p1.getPrice()+"' where p.id='" + p1.getId() + "'");
			q.executeUpdate();
			transaction.commit();

			session.close();

		} catch (Exception e) {
			System.out.println(e);
		}
	}

	}

