package my.com.dao;

import java.util.List;

import my.com.entity.Member;


public interface  MemberDao {
	public void create(Member obj);

	public void edit(Member obj);

	public void remove(Member obj);


	public List<Member> findAll();
	
	public Member findByEmail(String code);
	

    public boolean checkLogin(String email, String password);

    public boolean isEmailExist(String email);

}