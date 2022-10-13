package my.com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import my.com.dao.ContentDao;
import my.com.entity.Content;

@Service
public class ContentService {

    @Autowired
    private ContentDao contentDao;

    public void create(Content obj) {
        // TODO Auto-generated method stub

    }

    public void edit(Content obj) {
        // TODO Auto-generated method stub

    }

    public void remove(Content obj) {
        // TODO Auto-generated method stub

    }

    public List<Content> findAll() {
        // TODO Auto-generated method stub
        return contentDao.findAll();
    }

    public Content findByEmail(String code) {
        // TODO Auto-generated method stub
        return null;
    }

    public void deleteById(int id) {
        contentDao.remove(id);
        
    }

}
