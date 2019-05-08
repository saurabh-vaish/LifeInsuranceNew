package com.app.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.IBranchManagerDao;
import com.app.model.Branch;
import com.app.model.BranchManager;
import com.app.service.IBranchManagerService;

@Service
public class BranchManagerServiceImpl implements IBranchManagerService {

	@Autowired
	private IBranchManagerDao dao;
	
	@Transactional
	public Integer saveBranchManager(BranchManager branchManager) {
		return dao.saveBranchManager(branchManager);
	}

	@Transactional
	public void updateBranchManager(BranchManager branchManager) {
		dao.updateBranchManager(branchManager);
	}

	@Transactional
	public void deleteBranchManager(Integer id) {
		dao.deleteBranchManager(id);
	}

	@Transactional(readOnly=true)
	public BranchManager getBranchManagerById(Integer id) {
		return dao.getBranchManagerById(id);
	}

	@Transactional(readOnly=true)
	public List<BranchManager> getAllBranchManageres() {
		return dao.getAllBranchManageres();
	}
	
	
	@Transactional(readOnly=true)
	public Branch getBranchByManagerId(Integer id) {

	return dao.getBranchByManagerId(id);
	
	}

}
