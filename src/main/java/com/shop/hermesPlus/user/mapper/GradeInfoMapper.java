package com.shop.hermesPlus.user.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import com.shop.hermesPlus.user.vo.GradeInfoVO;

@Mapper
public interface GradeInfoMapper {
    public List<GradeInfoVO> selectGrades(GradeInfoVO gradeInfoVO);
    public GradeInfoVO selectGrade(GradeInfoVO gradeInfoVO);
    public int updateGrade(GradeInfoVO gradeInfoVO);
    public int insertGrade(GradeInfoVO gradeInfoVO);
    public int deleteGrade(int uiNum);
}
