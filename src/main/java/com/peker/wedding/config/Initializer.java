package com.peker.wedding.config;

import javax.servlet.FilterRegistration;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration.Dynamic;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.ContextLoaderListener;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.filter.HiddenHttpMethodFilter;
import org.springframework.web.servlet.DispatcherServlet;

public class Initializer implements WebApplicationInitializer {

	private static final String	CONFIG_PACKAGE	= "com.peker.wedding.config";

	@Override
	public void onStartup(ServletContext servletContext) throws ServletException {
		AnnotationConfigWebApplicationContext ctx = new AnnotationConfigWebApplicationContext();
		ctx.scan(CONFIG_PACKAGE);

		addHttpMethodFilter(servletContext);

		ctx.setServletContext(servletContext);

		Dynamic servlet = servletContext.addServlet("dispatcher", new DispatcherServlet(ctx));
		servlet.addMapping("/");
		servlet.setLoadOnStartup(1);

		servletContext.addListener(new ContextLoaderListener(ctx));
	}

	private void addHttpMethodFilter(ServletContext servletContext) {
		FilterRegistration.Dynamic httpMethodFilter = servletContext.addFilter("HttpMethodFilter",
				new HiddenHttpMethodFilter());
		httpMethodFilter.addMappingForUrlPatterns(null, false, "/*");
	}

}
