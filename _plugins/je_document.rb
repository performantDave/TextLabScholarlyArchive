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
         @jpath = param.strip
         @jpath.gsub!(/header./, '')
         super
      end 
    
      # return placeholders
      def render(context)        
        return "HEADER #{@jpath}"
      end 
   end 
end

Liquid::Template.register_tag('document', Jekyll::JeDocument)
