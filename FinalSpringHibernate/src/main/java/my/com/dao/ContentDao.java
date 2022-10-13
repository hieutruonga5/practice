package my.com.dao;

import java.util.List;

import my.com.entity.Content;


public interface  ContentDao {
	public void create(Content obj);

	public void edit(Content obj);

	public void remove(int id);


	public List<Content> findAll();
	
	public Content findByEmail(String code);


}