package com.app.dao;

import java.util.List;

import com.app.model.BranchManager;

public interface IBranchManagerDao {

	public Integer saveBranchManager(BranchManager branchManager);
	public void updateBranchManager(BranchManager branchManager);
	public void deleteBranchManager(Integer id);
	public BranchManager getBranchManagerById(Integer id);
	public List<BranchManager> getAllBranchManageres();
	
	
	
}
