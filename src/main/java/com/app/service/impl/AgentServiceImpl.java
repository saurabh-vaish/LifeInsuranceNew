package com.app.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.IAgentDao;
import com.app.model.Agent;
import com.app.service.IAgentService;

@Service
public class AgentServiceImpl implements IAgentService {

	@Autowired
	private IAgentDao dao;
	
	@Transactional
	public Integer saveAgent(Agent agent) {
		// TODO Auto-generated method stub
		return dao.saveAgent(agent);
	}

	@Transactional
	public void updateAgent(Agent agent) {
		// TODO Auto-generated method stub
		dao.updateAgent(agent);
	}

	@Transactional
	public void deleteAgent(Integer id) {
		dao.deleteAgent(id);
	}

	@Transactional(readOnly=true)
	public Agent getAgentById(Integer id) {
		return dao.getAgentById(id);
	}

	@Transactional(readOnly=true)
	public List<Agent> getAllAgents() {
		return dao.getAllAgents();
	}

	@Transactional(readOnly=true)
	public List<Object[]> getAgentByManagerId(Integer id) {
		return dao.getAgentByManagerId(id);
	}
	
}
