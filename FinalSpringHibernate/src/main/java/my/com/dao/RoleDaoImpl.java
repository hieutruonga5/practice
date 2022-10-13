package my.com.dao;

import java.io.Serializable;
import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import my.com.entity.Role;

@Repository
public class RoleDaoImpl extends CommonDao  implements RoleDao {

	public Integer create(Role obj) {
		// TODO Auto-generated method stub
		getCurrentSession().persist(obj);
		getCurrentSession().merge(obj);
		Integer id= (Integer)getCurrentSession().getIdentifier(obj);
	    return id;
	}

	public void edit(Role obj) {
		getCurrentSession().update(obj);
		
	}

	public void remove(Role obj) {
		getCurrentSession().delete(obj);
	}

	public Role find(Object id) {
		return (Role)getCurrentSession().get(Role.class, (Serializable) id);
	}

	public List<Role> findAll() {
		return getCurrentSession().createQuery("from my.com.entity.Role").list();	
	}


	

}
