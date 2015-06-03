package com.ydbaobao.dao;

import java.util.List;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import javax.sql.DataSource;

import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import com.ydbaobao.model.Brand;

@Repository
public class BrandDao extends JdbcDaoSupport {
	@Resource
	private DataSource dataSource;
	
	@PostConstruct
	private void initialize() {
		setDataSource(dataSource);
	}

	public List<Brand> readBrands() {
		String sql = "select * from BRANDS";
		return getJdbcTemplate().query(
				sql, (rs, rowNum) -> new Brand(rs.getLong("brandId"), rs.getString("brandName")));
	}

	public void createBrand(String brandName) {
		String sql = "insert into BRANDS values(null, ?)";
		getJdbcTemplate().update(sql, brandName);
	}

	public Brand readBrandByBrandName(String brandName) {
		String sql = "select * from BRANDS where brandName=?";
		try {
			return getJdbcTemplate().queryForObject(sql, (rs, rowNum) -> new Brand(
					rs.getLong("brandId"), 
					rs.getString("brandName")), brandName);
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
	}

	public void updateBrand(String brandId, String brandName) {
		String sql = "update BRANDS set brandName = ? where brandId = ?";
		getJdbcTemplate().update(sql, brandName, brandId);
	}

	public void deleteBrand(String brandId) {
		String sql = "delete from BRANDS where brandId = ?";
		getJdbcTemplate().update(sql, brandId);
	}
}
