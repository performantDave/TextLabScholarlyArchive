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

$(function() {
      // initialize sea dragon image zoom
      $('.dragon').each(function(idx, imageDiv) {
         OpenSeadragon({
            id : imageDiv.id,
            prefixUrl : "https://s3.amazonaws.com/assets-juxtaeditions/assets/",
            tileSources : $(imageDiv).attr("data-tile-source-url"),
            maxZoomPixelRatio : 5
         });
      });

      var toggleViewButtons = function(clicked) {
         if (clicked == "diplomatic") {
            $(".reading-view-button").removeClass("active");
            $(".diplomatic-view-button").addClass("active");
         } else {
            $(".diplomatic-view-button").removeClass("active");
            $(".reading-view-button").addClass("active");
         }
      };

      $(".diplomatic-view-button").on("click", function() {
         toggleViewButtons("diplomatic");
         $(".diplomatic").removeClass("hidden");
         $(".reading").addClass("hidden");
      });

      $(".reading-view-button").on("click", function() {
         toggleViewButtons("reading");
         $(".diplomatic").addClass("hidden");
         $(".reading").removeClass("hidden");
      });
   });