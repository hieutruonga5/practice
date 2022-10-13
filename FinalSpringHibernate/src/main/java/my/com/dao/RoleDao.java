package my.com.dao;

import java.util.List;

import my.com.entity.Role;


public interface  RoleDao {
	public Integer create(Role obj);

	public void edit(Role obj);

	public void remove(Role obj);

	public Role find(Object id);

	public List<Role> findAll();
}