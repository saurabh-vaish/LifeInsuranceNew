package com.app.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.IBranchDao;
import com.app.model.Branch;


@Repository
public class BranchDaoImpl implements IBranchDao {

	@Autowired
	private HibernateTemplate ht;
	
	
	public String saveBranch(Branch b) {
		return (String) ht.save(b);
	}

	public void updateBranch(Branch b) {
		ht.update(b);
	}

	public void deleteBranch(String id) {
		ht.delete(ht.get(Branch.class, id));
	}

	public Branch getBranchById(String id) {
		return ht.get(Branch.class, id);
	}

	public List<Branch> getAllBranches() {
		System.out.println(ht.loadAll(Branch.class));
		return ht.loadAll(Branch.class);
	}

}
