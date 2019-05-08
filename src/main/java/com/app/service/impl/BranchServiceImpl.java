package com.app.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.IBranchDao;
import com.app.model.Branch;
import com.app.service.IBranchService;

@Service
public class BranchServiceImpl implements IBranchService {

	@Autowired
	private IBranchDao dao;
	
	@Transactional
	public String saveBranch(Branch b) {
		// TODO Auto-generated method stub
		return dao.saveBranch(b);
	}

	@Transactional
	public void updateBranch(Branch b) {
		// TODO Auto-generated method stub
		dao.updateBranch(b);
	}

	@Transactional
	public void deleteBranch(String id) {
		dao.deleteBranch(id);
	}

	@Transactional(readOnly=true)
	public Branch getBranchById(String id) {
		return dao.getBranchById(id);
	}

	@Transactional(readOnly=true)
	public List<Branch> getAllBranches() {
		return dao.getAllBranches();
	}

}
