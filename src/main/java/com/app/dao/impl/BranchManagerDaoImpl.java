package com.app.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.IBranchManagerDao;
import com.app.model.BranchManager;


@Repository
public class BranchManagerDaoImpl implements IBranchManagerDao {

	@Autowired
	private HibernateTemplate ht;
	
	
	public Integer saveBranchManager(BranchManager branchManager) {
		return (Integer)ht.save(branchManager);
	}

	public void updateBranchManager(BranchManager branchManager) {
		ht.update(branchManager);
	}

	public void deleteBranchManager(Integer id) {
		ht.delete(new BranchManager(id));
	}

	public BranchManager getBranchManagerById(Integer id) {
		return ht.get(BranchManager.class, id);
	}

	public List<BranchManager> getAllBranchManageres() {
		return ht.loadAll(BranchManager.class);
	}
	
	

}
