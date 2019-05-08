package com.app.dao.impl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.app.dao.IBranchManagerDao;
import com.app.model.Branch;
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
	
	@Override
	public Branch getBranchByManagerId(Integer id) {

		Branch b = null;
	List<Branch> list = (List<Branch>) ht.findByCriteria(
				DetachedCriteria.forClass(Branch.class)
				.add(Restrictions.eq("manager.mgrId", id))
				);
	
	
	for(Branch br:list)
	{
		b=br;
	}
		return b;
	}

}
