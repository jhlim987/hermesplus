package com.shop.hermesPlus.category.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.hermesPlus.category.mapper.DetailCategoryMapper;
import com.shop.hermesPlus.category.vo.CategoryVO;

@Service
public class DetailCategoryService {
	
	@Autowired
	private DetailCategoryMapper detailCategoryMapper;
	
	public List<CategoryVO> selectAllDetailCategories(){
		return detailCategoryMapper.selectAllDetailCategories();
	}
	public CategoryVO selectDetailCategory(int dcId) {
		return detailCategoryMapper.selectDetailCategory(dcId);
	}
	public List<CategoryVO> findBySubCategoryId(int subCategoryId) {
		return detailCategoryMapper.findBySubCategoryId(subCategoryId);
	}
	public int insertDetailCategory(CategoryVO detailCategory) {
		return detailCategoryMapper.insertDetailCategory(detailCategory);
	}
	public int updateDetailCategory(CategoryVO detailCategory) {
		return detailCategoryMapper.updateDetailCategory(detailCategory);
	}
	public int deleteDetailCategory(int dcId) {
		return detailCategoryMapper.deleteDetailCategory(dcId);
	}
}
