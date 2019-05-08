package com.app.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.app.dao.IAgentDao;
import com.app.model.Agent;


@Repository
public class AgentDaoImpl implements IAgentDao {

	@Autowired
	private HibernateTemplate ht;
	
	
	public Integer saveAgent(Agent agent) {
		return (Integer)ht.save(agent);
	}

	public void updateAgent(Agent agent) {
		ht.update(agent);
	}

	public void deleteAgent(Integer id) {
		ht.delete(new Agent(id));
	}

	public Agent getAgentById(Integer id) {
		return ht.get(Agent.class, id);
	}

	public List<Agent> getAllAgents() {
		//System.out.println(ht.loadAll(Agent.class));
		return ht.loadAll(Agent.class);
	}

	
	@Override
	public List<Object[]> getAgentByManagerId(Integer id) 
	{
		String i = ""+id;
		String hql = " from com.app.model.Agent where agentBranch = "+i;
		List<Object[]> list = (List<Object[]>) ht.find(hql);
		return list;
	}
	
}
