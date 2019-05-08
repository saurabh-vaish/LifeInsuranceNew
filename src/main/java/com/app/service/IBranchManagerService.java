package com.app.service;

import java.util.List;

import com.app.model.BranchManager;

public interface IBranchManagerService {

	public Integer saveBranchManager(BranchManager branchManager);
	public void updateBranchManager(BranchManager branchManager);
	public void deleteBranchManager(Integer id);
	public BranchManager getBranchManagerById(Integer id);
	public List<BranchManager> getAllBranchManageres();
	
	
}
