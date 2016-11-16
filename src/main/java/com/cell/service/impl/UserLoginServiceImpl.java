package com.cell.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cell.dao.UserDao;
import com.cell.model.User;
import com.cell.service.UserLoginService;
import com.cell.viewmodel.SignupForm;

@Service
public class UserLoginServiceImpl implements UserLoginService{

	@Autowired
	private UserDao userDao;
	
	@Override
	public boolean signup(SignupForm signupForm) {
		if(!validateDesignerSignupForm(signupForm))
			return false;
		userDao.add(new User(signupForm));
		return true;
	}

	@Override
	public boolean signin(String userId, String password) {
		System.out.println(userId);
		int id = Integer.parseInt(userId);
		User user = userDao.findById(id);		
		if(user!=null && user.getPassword().equals(password))
			return true;
		return false;
	}


	//验证注册信息是否正确，暂时没写
	private boolean validateDesignerSignupForm(SignupForm signupForm){
		return true;
	}

	@Override
	public User getPersonInfo(String userId) {
		int id = Integer.parseInt(userId);
		return userDao.findById(id);
	}

	@Override
	public User getUserById(String id) {
		return userDao.findById(Integer.parseInt(id));
	}
}
