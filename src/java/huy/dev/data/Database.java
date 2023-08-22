package huy.dev.data;

import huy.dev.data.dao.CategoryDao;
import huy.dev.data.dao.OrderDao;
import huy.dev.data.dao.OrderDetailDao;
import huy.dev.data.dao.ProductDao;
import huy.dev.data.dao.UserDao;
import huy.dev.data.impl.CategoryDaoImpl;
import huy.dev.data.impl.OrderDaoImpl;
import huy.dev.data.impl.OrderDetailDaoImpl;
import huy.dev.data.impl.ProductDaoImpl;
import huy.dev.data.impl.UserDaoImpl;

public class Database extends DatabaseDao {

	@Override
	public UserDao getUserDao() {
		// TODO Auto-generated method stub
		return new UserDaoImpl();
	}

	@Override
	public CategoryDao getCategoryDao() {
		// TODO Auto-generated method stub
		return new CategoryDaoImpl();
	}

	@Override
	public ProductDao getProductDao() {
		// TODO Auto-generated method stub
		return new ProductDaoImpl();
	}

	@Override
	public OrderDao getOrderDao() {
		// TODO Auto-generated method stub
		return new OrderDaoImpl();
	}

	@Override
	public OrderDetailDao getOrderDetailDao() {
		// TODO Auto-generated method stub
		return new OrderDetailDaoImpl();
	}

}

