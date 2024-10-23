package com.shop.hermesPlus.category.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.shop.hermesPlus.category.vo.CategoryVO;

@Mapper
public interface SubCategoryMapper {
    List<CategoryVO> selectAllSubCategories(); // 매개변수 제거
    CategoryVO selectSubCategory(int scId);
    List<CategoryVO> findByMainCategoryId(int mainCategoryId);
    int insertSubCategory(CategoryVO subCategory);
    int updateSubCategory(CategoryVO subCategory);
    int deleteSubCategory(int scId);
}