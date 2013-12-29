package com.rbnelite.udyogvishwa.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

public class BaseDao<T> {

    protected SessionFactory sessionFactory;
    private final Class<T> clazz;


    public BaseDao(Class<T> clazz) {
            this.clazz = clazz;
    }
    
    @Resource
    public void setSessionFactory(SessionFactory sessionFactory) {
            this.sessionFactory = sessionFactory;
    }
   
    public T get(int id) {
            return (T) getSession().get(clazz, id);
    }

    public T load(int id) {
            return (T) getSession().load(clazz, id);
    }

    @Transactional
    public void create(T obj) {
            getSession().save(obj);
    }

    public void saveOrUpdate(T obj) {
            getSession().saveOrUpdate(obj);
    }

    public void delete(T obj) {
            getSession().delete(obj);
    }

    public List<T> list() {
            Criteria criteria = getSession().createCriteria(clazz);
            return criteria.list();
    }

    protected SessionFactory getSessionFactory() {
            return sessionFactory;
    }

    @Transactional
    protected Session getSession() {
            return sessionFactory.openSession();
    }
    
}
