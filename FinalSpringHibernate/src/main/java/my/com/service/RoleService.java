package my.com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import my.com.dao.RoleDao;
import my.com.entity.Role;

@Service
@Transactional
public class RoleService {
	
	@Autowired
    private RoleDao roleDao;

    public List<Role> findAll(){
    	return roleDao.findAll();
    }
    public void create(Role role) {
    	roleDao.create(role);
    }

}
