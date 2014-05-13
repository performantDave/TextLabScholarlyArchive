Scholarly Archive Template
================================

This site template displays all of the documents in an edition and allows readers to compare different versions of the documents.

Directory Structure
-------------------

_data : This contains mock data to animate the template interface when testing. Files in this directory are ignored by Juxta Editions
_includes : These are HTML partials that can be included into a HTML page. See Jekyll documentation. The page.html is used to render the individual pages from Juxta Editions.
_layouts : These are layouts which encompass content pages. See Jekyll documentation. The comparison.html and document.html layouts wrap the content from Juxta Editions.
_plugins: This directory is not processed by Juxta Editions. The je_mimic.rb file here mimics the Juxta Editions API for testing purposes.
documents : Documents from Juxta Editions will be automatically written here.
