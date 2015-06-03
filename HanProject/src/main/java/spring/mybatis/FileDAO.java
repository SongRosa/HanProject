package spring.mybatis;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.web.bind.annotation.ModelAttribute;

/**
 * @author kosmo010
 *
 */
public class FileDAO extends SqlSessionDaoSupport{
	SqlSession session;

	public void setSession(SqlSession session) {
		this.session = session;
	}
	
	/**
	 * 참고하세요~~~~~~~~
	 * 
	 * public List<FileInfo> selectAll(){
		List<FileInfo> list = getSqlSession().selectList("File.fileSelect");
		return list;
	}
	
	public int insert(FileInfo fileInfo){
		int insertCount = getSqlSession().insert("File.fileInsert", fileInfo);
		
		if(insertCount>0){
			System.out.println("insert Ok!!!!");
		}else{
			System.out.println("insert fail~~");
		}
		
		return insertCount;	
	}
	
	public FileInfo selectOne(String fileNumber){
		Map map = new HashMap();
		map.put("fileNumber", fileNumber);
		System.out.println("fileNumber:::"+fileNumber);
		FileInfo fi = (FileInfo)getSqlSession().selectOne("File.numberSelect", map);
		
		return fi;
	}
	
	public int update(FileInfo fileInfo){
		int updateCount = getSqlSession().update("File.fileUpdate", fileInfo);
		
		if(updateCount>0){
			System.out.println("update Ok!!");
		}else{
			System.out.println("update Fail!!");
		}
		
		return updateCount;
	}
	
	public int delete(FileInfo fileInfo){
		int deleteCount = getSqlSession().delete("File.fileDelete", fileInfo);
		
		if(deleteCount>0){
			System.out.println("delete Ok!!");
		}else{
			System.out.println("delete Fail!!");
		}
		
		return deleteCount;
	}*/
}
