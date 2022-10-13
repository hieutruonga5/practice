package my.com.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import my.com.entity.Content;

@Repository
public class ContentDaoImpl extends CommonDao implements ContentDao {

	public void create(Content obj) {
		// TODO Auto-generated method stub

	}

	public void edit(Content obj) {
		// TODO Auto-generated method stub

	}

	public void remove(int id) {
		Session session = getCurrentSession();
		session.beginTransaction();
		Content content = (Content) session.get(Content.class, (Serializable) id);
		session.delete(content);
		session.getTransaction().commit();
		session.close();
	}

	@SuppressWarnings("unchecked")
	public List<Content> findAll() {
		Session session = getCurrentSession();
//		session.beginTransaction();
		List<Content> contents = session.createQuery("from my.com.entity.Content").list();
//		session.getTransaction().commit();
		session.close();
		return contents;
	}

	public Content findByEmail(String code) {
		// TODO Auto-generated method stub
		return null;
	}

}
