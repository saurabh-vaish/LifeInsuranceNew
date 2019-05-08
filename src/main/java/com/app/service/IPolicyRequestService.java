package com.app.service;

import java.util.List;

import com.app.model.Policy;
import com.app.model.PolicyRequest;

public interface IPolicyRequestService {

	public Integer savePolicyRequest(PolicyRequest policyRequest);
	public void updatePolicyRequest(PolicyRequest policyRequest);
	public void deletePolicyRequest(Integer id);
	
	public PolicyRequest getPolicyRequestById(Integer id);
	public List<PolicyRequest> getAllPolicyRequests();
	
}
