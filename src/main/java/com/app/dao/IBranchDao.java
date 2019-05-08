package com.app.dao;

import java.util.List;

import com.app.model.Branch;

public interface IBranchDao {

	public String saveBranch(Branch b);
	public void updateBranch(Branch b);
	public void deleteBranch(String id);
	public Branch getBranchById(String id);
	public List<Branch> getAllBranches();
	
}
