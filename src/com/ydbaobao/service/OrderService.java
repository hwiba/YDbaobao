package com.ydbaobao.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ydbaobao.dao.OrderDao;
import com.ydbaobao.model.Order;

@Service
public class OrderService {
	
	@Resource
	OrderDao orderDao;

	public List<Map<String, Object>> readOrders(String customerId) {
		return orderDao.readOrders(customerId);
	}
	
	public Order readOrder(int orderId) {
		return orderDao.readOrder(orderId);
	}
}
