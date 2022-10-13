package my.com.service;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import my.com.dao.MemberDao;
import my.com.entity.Member;

@Service
public class MemberService {

    @Autowired
    private MemberDao memberDao;

    public Member findByEmail(String email) {
        return memberDao.findByEmail(email);
    }

    public boolean checkLogin(String email, String password) {
        return memberDao.checkLogin(email, password);
    }

    public boolean isEmailExist(String email) {
        return memberDao.isEmailExist(email);
    }

    public void insertMember(Member obj) {
        obj.setCreateDate(new Date());
        obj.setUpdateTime(new Date());
        memberDao.create(obj);
    }

    public void editMember(Member obj) {
        memberDao.edit(obj);
    }
}
