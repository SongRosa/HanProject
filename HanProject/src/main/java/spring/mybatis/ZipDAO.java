package spring.mybatis;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import spring.command.ZipInfo;

public class ZipDAO extends SqlSessionDaoSupport {
	public List<ZipInfo> selectzip(String dong) {
		return getSqlSession().selectList("JoinMap.selectzip", dong);
	}
}
