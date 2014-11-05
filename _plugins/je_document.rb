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


# This plugin mimics the Juxta Editions Document API 
module Jekyll
  
   class JeDocument < Liquid::Tag
          
      def initialize(tag_name, param, tokens)
         # There are 2 forms of the document tag; one that uses
         # an enclsong context to determine document, the other
         # uses shortcodes.
         # Shortcodes look like this: document[tag] header.stuff
         # Context looks like this:   document header.stuff
         # Anything immediately after 'document' is part if the params string
         #
         # Determine type and parse info:
         @type = :context
         @type = :shortcode if param[0] == '[' 
         @jpath = param.strip
         @shortcode = nil 

         if @type == :shortcode
            @shortcode = @jpath.split(" ")[0]
            @shortcode.gsub!(/[\[\]]/, '') 
            @jpath = @jpath.split(" ")[1]
         end 
         
         @jpath.gsub!(/header./, '') 
         super
      end 
    
      # return placeholders
      def render(context)        
        return "DOCUMENT #{@shortcode} HEADER #{@jpath}" if @type == :shortcode
        return "HEADER #{@jpath}"
      end 
   end 
end

Liquid::Template.register_tag('document', Jekyll::JeDocument)
