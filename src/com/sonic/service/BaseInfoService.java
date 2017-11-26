package com.sonic.service;

import java.util.List;


import com.sonic.pojo.Admin;
import com.sonic.pojo.AdminSu;
import com.sonic.pojo.StuBase;


public interface BaseInfoService {
	//�ڻ�����Ϣ���������ȡ��Ӧѧ������Ϣlist
	public List<StuBase> getStuBaseList(String page,String rows);
	public int getUserTotal();
	
	
	
	
	/*//��ȡ֪ͨ��Ϣ
	public List<Info> getAllInfoList(String page,String rows);
	public int getInfoTotal();*/
	
	/*//��ȡ������Ϣ
	public List<Info> getAllGoodsList(String page,String rows);
	public int getGoodsTotal();*/
	
	//public List<StuBase> getUserList(String page,String rows);
	//public int getUserTotalByAuthority(String Authority);
	public Admin getTUser(String id);
	public AdminSu getSUser(String id);
	public StuBase getUser(String userId);
	//public void saveUserOrUpdate(StuBase user);
	//public void delete(List<StuBase> list);
	
	public List<StuBase> getStuSearchList(String hql, String page, String rows);
	public int getSearchedTotal(String hql);
	
	public void saveStuBaseOrUpdate(StuBase stu);
	
	public void deleteStu(int newsId);
}