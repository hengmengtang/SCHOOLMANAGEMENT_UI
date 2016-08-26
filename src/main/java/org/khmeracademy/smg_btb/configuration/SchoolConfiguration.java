package org.khmeracademy.smg_btb.configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@PropertySource(
		value={"classpath:configuration.properties"}
)
@EnableWebMvc
public class SchoolConfiguration extends WebMvcConfigurerAdapter {
	
	@Autowired
	private Environment environment;
	
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
	}
	
	 @Override
	    public void configureViewResolvers(ViewResolverRegistry registry) {
	    	
	    	InternalResourceViewResolver resovler = new InternalResourceViewResolver();
	    	resovler.setPrefix("/WEB-INF/pages/");
	    	resovler.setSuffix(".jsp");
	    	
	    	registry.viewResolver(resovler);
	    }
	
	@Bean
	public RestTemplate restTemplate(){
		RestTemplate restTemplate = new RestTemplate();
		// Add the Jackson and String message converters
		restTemplate.getMessageConverters().add(new MappingJackson2HttpMessageConverter());
		restTemplate.getMessageConverters().add(new StringHttpMessageConverter());
		return restTemplate;
	}
	
	@Bean
	public String WS_API_URL(){
		return environment.getProperty("SMG.API.URL");
	}
	
	@Bean
	public String WEB_UI_URL(){
		return environment.getProperty("SMG.UI.URL");
	}
	
}
