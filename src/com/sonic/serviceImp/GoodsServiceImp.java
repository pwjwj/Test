package com.sonic.serviceImp;

import java.util.List;

import com.sonic.dao.GenericDao;
import com.sonic.pojo.Info;
import com.sonic.service.GoodsService;

public class GoodsServiceImp implements GoodsService{
	private GenericDao genericDao;
	public GenericDao getGenericDao() {
		return genericDao;
	}
 
	public void setGenericDao(GenericDao genericDaoImp) {
		this.genericDao = genericDaoImp;
	}
	
	@Override
	public List<Info> getAllGoodsList(String page, String rows) {
		// TODO Auto-generated method stub
		int currentpage = Integer.parseInt((page == null || page == "0") ? "1"
				: page);// �ڼ�ҳ
		int pagesize = Integer.parseInt((rows == null || rows == "0") ? "10"
				: rows);// ÿҳ������

		return genericDao.query("from Goods", currentpage, pagesize);
	}
	
	@Override
	public int getGoodsTotal() {
		// TODO Auto-generated method stub
		return genericDao.countQuery("from Goods");
	}
}