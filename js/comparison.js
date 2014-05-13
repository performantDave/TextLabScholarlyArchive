// Copyright 2014 Performant Software Solutions LLC
// 
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
// 
//     http://www.apache.org/licenses/LICENSE-2.0
// 
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

var initVisualizationSize = function() { 
   $(".comparison-view").css("overflow-x", "hidden");
   $(".comparison-view").css("overflow-y", "hidden");
   var windowH = $(window).height();
   var sH = $("#site-header").outerHeight(true);
   var finalSize = windowH-sH-25;
   $(".comparison-view").height(finalSize);   
   Juxta.SideBySide.resize();   
};

$(function() {
   var initializeVisualization = function() {
      initVisualizationSize();
      Juxta.SideBySide.initialize();
   };

   $("#change-left").hide(); 
   $("#change-right").hide();

   $("body").on("sidebyside-loaded", function() {
      initializeVisualization();
   });
});

$(window).resize(function() {
   initVisualizationSize();
});