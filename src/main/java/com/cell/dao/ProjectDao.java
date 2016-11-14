package com.cell.dao;

import java.util.List;

import com.cell.model.Project;

public interface ProjectDao extends GenericDao<Project, Integer>{

	public void addProgrammer(int projectId, int programmerId);
	}
