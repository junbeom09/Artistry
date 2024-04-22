package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class PaymentsDAO {

	SqlSessionFactory sf = SqlSessionManager.getSqlSession();
	
	public List<Payments> payment_info(String mb_Email) {
		SqlSession session = sf.openSession(true);
		List<Payments> paymentList = session.selectList("com.smhrd.db.PaymentsMapper.get_payments_info", mb_Email);
		session.close();
		return  paymentList;
	}

}
