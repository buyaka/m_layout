class MLayoutGenerator < Rails::Generator::Base
	def initialize(runtime_args, runtime_options = {})
	    super
	    @name = @args.first || 'application'
	end
  
	def manifest
		record do |m|
			m.template "layout/layout.html.erb", "app/views/layouts/#{file_name}.html.erb"			
			m.file     "stylesheet/stylesheet.css",  "public/stylesheets/#{file_name}.css"
			
			m.file     "images/b.png",  "public/images/b.png"
			m.file     "images/t.png",  "public/images/t.png"
		end
	end
	
	def file_name
		@name.underscore
	end
end