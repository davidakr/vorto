package com.bosch.iotsuite.console.generator.application.templates.config

import org.eclipse.vorto.codegen.api.IFileTemplate
import org.eclipse.vorto.codegen.api.InvocationContext
import org.eclipse.vorto.core.api.model.informationmodel.InformationModel
import com.bosch.iotsuite.console.generator.application.templates.TemplateUtils

class SwaggerConfigurationTemplate implements IFileTemplate<InformationModel> {
	
	
	override getFileName(InformationModel context) {
		'''SwaggerConfiguration.java'''
	}
	
	override getPath(InformationModel context) {
		'''«TemplateUtils.getBaseApplicationPath(context)»/config'''
	}
	
	override getContent(InformationModel element, InvocationContext context) {
		'''
		package com.example.iot.«element.name.toLowerCase».config;
		
		import static com.google.common.base.Predicates.or;
		
		import org.springframework.context.annotation.Bean;
		import org.springframework.context.annotation.Configuration;
		
		import com.google.common.base.Predicate;
		
		import springfox.documentation.builders.PathSelectors;
		import springfox.documentation.service.ApiInfo;
		import springfox.documentation.spi.DocumentationType;
		import springfox.documentation.spring.web.plugins.Docket;
		import springfox.documentation.swagger2.annotations.EnableSwagger2;
		
		@EnableSwagger2
		@Configuration
		public class SwaggerConfiguration {
		
			@Bean
			public Docket vortoApi() {
				return new Docket(DocumentationType.SWAGGER_2).apiInfo(apiInfo()).useDefaultResponseMessages(false)
						.select().paths(paths()).build();
		
			}
		
			@SuppressWarnings("unchecked")
			private Predicate<String> paths() {
				return or(	PathSelectors.regex("/rest/devices.*")«IF context.configurationProperties.getOrDefault("history","true").equalsIgnoreCase("true")»,PathSelectors.regex("/rest/history/devices.*")«ENDIF»);
			}
		
			private ApiInfo apiInfo() {
				return new ApiInfo("«element.name»",
						"«element.name» Solution",
						"1.0.0", "", "Generated by Vorto from «element.namespace».«element.name»:«element.version»", "Bosch-SI", "");
			}
		}
		'''
	}
}