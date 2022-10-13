package my.com.dao;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Repository;

import my.com.entity.Content;
import my.com.entity.Member;

@Repository
public class MemberDaoImpl extends CommonDao implements MemberDao {

	public void create(Member obj) {
		// TODO Auto-generated method stub
		Session session = getCurrentSession();
//		Content content1 = new Content();
//		Content content2 = new Content();
//		content1.setContent("123");
//		content2.setContent("toan");
//		List<Content> contents = Arrays.asList(content1, content2);
//		obj.setContents(contents);
		session.save(obj);
		session.close();
//        Integer id = (Integer) getCurrentSession().getIdentifier(obj);
//        return id;
	}

	public void edit(Member obj) {
		Session session = getCurrentSession();
		session.beginTransaction();
		Member member = (Member) session.get(Member.class, obj.getId());
//		BeanUtils.copyProperties(obj, member, "createDate", "password");
//		member.setUpdateTime(new Date());
//		session.save(member);
		session.delete(member);
		session.getTransaction().commit();
		session.close();

	}

	public void remove(Member obj) {
		getCurrentSession().delete(obj);
	}

	@SuppressWarnings("unchecked")
	public List<Member> findAll() {
		return getCurrentSession().createQuery("from my.com.entity.Member").list();
	}

	@SuppressWarnings("unchecked")
	public Member findByEmail(String email) {
		Session session = getCurrentSession();
		String hql = "from my.com.entity.Member o where 1=1";
		if (!"".equals(email)) {
			hql += " and o.email = '" + email + "'";
		}
		List<Member> MemberList = session.createQuery(hql).list();
		session.close();
		if (MemberList != null && MemberList.size() > 0) {
			return MemberList.get(0);
		}

		return null;
	}

	@SuppressWarnings("unchecked")
	public boolean checkLogin(String email, String password) {
		Session session = getCurrentSession();
		String hql = "from my.com.entity.Member o where o.email = '" + email + "' and o.password ='" + password + "'";
		List<Member> MemberList = session.createQuery(hql).list();
		session.close();
		return MemberList == null ? false : MemberList.size() > 0;
	}

	@SuppressWarnings("unchecked")
	public boolean isEmailExist(String email) {
		Session session = getCurrentSession();
		String hql = "from my.com.entity.Member o where o.email = '" + email + "'";
		List<Member> MemberList = session.createQuery(hql).list();
		session.close();
		return MemberList == null ? false : MemberList.size() > 0;
	}

}
