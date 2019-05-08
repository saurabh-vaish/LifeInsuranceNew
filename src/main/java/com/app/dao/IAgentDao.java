package com.app.dao;

import java.util.List;

import com.app.model.Agent;

public interface IAgentDao {

	public Integer saveAgent(Agent agent);
	public void updateAgent(Agent agent);
	public void deleteAgent(Integer id);
	public Agent getAgentById(Integer id);
	public List<Agent> getAllAgents();
	
	public List<Object[]> getAgentByManagerId(Integer id);
	
}
