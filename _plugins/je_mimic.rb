# Copyright 2014 Performant Software Solutions LLC
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# This plugin mimics the Juxta Editions API 
module Jekyll
  
   class Edition < Liquid::Tag
          
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
   
   
   class DocumentToolbar < Liquid::Tag
          
      def initialize(tag_name, param, tokens)
         super
      end 
    
      def render(context)        
        return "<div class='toolbar'></div>"
      end 
   end
end

Liquid::Template.register_tag('edition', Jekyll::Edition)
Liquid::Template.register_tag('je_document_toolbar', Jekyll::DocumentToolbar)