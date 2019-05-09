package com.app.config;

import java.util.Properties;

import org.apache.commons.dbcp2.BasicDataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@EnableWebMvc
@EnableTransactionManagement
@PropertySource("classpath:app.properties")
@ComponentScan(basePackages="com.app")
public class AppConfig implements WebMvcConfigurer  // for adding resources
{
 
	@Autowired
	private Environment env;
	
	// view resolver
	@Bean
	public InternalResourceViewResolver ivr()
	{
		InternalResourceViewResolver vr = new InternalResourceViewResolver();
		vr.setPrefix(env.getProperty("prefix"));
		vr.setSuffix(env.getProperty("suffix"));
		//System.out.println("ivr");
		return vr;
	}
	
	// connection details 
	// datasource
	
	@Bean
	public BasicDataSource bs()
	{
		BasicDataSource bs = new BasicDataSource();
		bs.setDriverClassName(env.getProperty("dc"));
		bs.setUrl(env.getProperty("url"));
		bs.setUsername(env.getProperty("usr"));
		bs.setPassword(env.getProperty("pwd"));
		bs.setInitialSize(2);
		bs.setMaxTotal(2);
		bs.setMaxIdle(1);
		bs.setMinIdle(1);
		//System.out.println("bds");
		return bs;
	}
	
	@Bean
	public LocalSessionFactoryBean sf()
	{
		
		LocalSessionFactoryBean sf= new LocalSessionFactoryBean();
		sf.setDataSource(bs());
		sf.setHibernateProperties(props());
		//sf.setAnnotatedClasses(Branch.class);
		sf.setPackagesToScan("com.app.model");
		//System.out.println("lsf");
		return sf;
	}
	
	public Properties props()
	{
		Properties p = new Properties();
		p.put("hibernate.dialect",env.getProperty("dialect"));
		p.put("hibernate.show_sql",env.getProperty("shwsql"));
		p.put("hibernate.format_sql",env.getProperty("fmtsql"));
		p.put("hibernate.hbm2ddl.auto",env.getProperty("hbm2ddl"));
		return p;
		
	}
	
	@Bean
	public HibernateTemplate ht()
	{
		HibernateTemplate ht = new HibernateTemplate();
		ht.setSessionFactory(sf().getObject());
		//System.out.println("ht");
		return ht;
	}
	
	@Bean
	public HibernateTransactionManager htm()
	{
		HibernateTransactionManager htm = new HibernateTransactionManager();
		htm.setSessionFactory(sf().getObject());
		//System.out.println("htm");
		return htm;
	}
	

	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
	        registry.addResourceHandler("/resources/**").addResourceLocations("/WEB-INF/views/external/");
	}
	
	
	//6. Password encoder
		@Bean
		public BCryptPasswordEncoder encoder() {
			BCryptPasswordEncoder enc=new BCryptPasswordEncoder();
			return enc;
		}
	
		

		// for file
		@Bean
		public CommonsMultipartResolver multipartResolver()
		{
			CommonsMultipartResolver cmr = new CommonsMultipartResolver();
			return cmr;
		}

		
	
}
