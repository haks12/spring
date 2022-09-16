package ch05.config;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class Configuration {
	private static SqlSessionFactory sqlsessionFactory;
	
	static {
		try {
			Reader reader = Resources.getResourceAsReader("ch05/config/sqlMapConfig.xml");
			sqlsessionFactory = new SqlSessionFactoryBuilder().build(reader);
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public static <T>T getMapper(Class<T> args) {
		return sqlsessionFactory.openSession(true).getMapper(args);
	}
}