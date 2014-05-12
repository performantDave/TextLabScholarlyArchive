
module Jekyll
  
   class JeEdition < Liquid::Tag
          
      def initialize(tag_name, param, tokens)
        @edition_data_key = param.strip
         super
      end 
    
      def render(context)        
        return "EDITION DESCRIPTION" if @edition_data_key == "description"
        return "EDITION TITLE" if @edition_data_key == 'title'
        return "<span class='error' invalid parameter: #{@edition_data_key}</span>"
      end 
   end 
end

Liquid::Template.register_tag('edition', Jekyll::JeEdition)