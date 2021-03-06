How can we figure out how consistent reporting is?

Here are the column headers in the metadata coming from DEC searches.

* ContentItemId
* Abstract
* Ancilary Data
* ARDA Subject Category
* ARDA Volume and Issue
* Personal Author
* Availability
* Bibliographic Type Code
* Bibliographic Level
* Bibtype Name
* CD Number
* CD Fulltext Database
* CD Fulltext Contributing Office
* Contract/Grant Number
* Cost of Electronic Copy
* Cost of Microfiche
* Cost of Paper Copy
* Date Abstracted and Indexed
* Create Date for CD
* Date Cataloging Proofed
* Date Indexed Only
* Date Processing Complete
* Date Prepared for Filming
* Date of Publication Freeforrm
* Date of Publication Fixed
* Date of Expected Release to Public
* Date Refilmed
* Date Returned from Filmer
* Date Sent Abstracting Indexing
* Date Sent to Filmer
* Descriptions from Thesaurus
* Secondary Descriptors
* Descriptors Geographic
* DESCTEMP
* Document ID
* Edition
* Entered By
* AID Contact Number Evaluated
* Total Evaluation Cost
* Exclude from Prjdoc View
* File Format
* Fulltext External Reference
* File Size
* File Software and Version
* Fulltext
* USAID Geography Code
* USAID Geography Name
* Related Object Link
* New Thesaurus Terms
* Institution Authority Code
* Institution Name
* Institution Role
* Inventory Location
* Inventory Quantity
* ISBN
* Language of Text
* Mime Type
* Notation
* NTIS Number
* Number of Fiche
* Number of Fiche Frames
* Stategic Objective Number
* Pagination
* Collation Notes
* Prepped By
* Project Number
* Project9 Prime Dve Activity
* Project Sub Number
* REC_NO
* Related Docs Links
* Report Number
* Batch
* Box
* Shelf Location
* Special Processing Instructions
* Primary Subject
* Document Title
* Series Title
* Document Title Translated
* Title Word Alternate Spelling
* Web Collection
* Abstract or Index
* ABIN load Check Field
* USAID Project Number
* File
* Institution or USAID Bureau Author
* Institution or USAID Sponsor
* Institution or USAID Publisher
* Restricted to USAID Only
* Language ISO1 Code
* Class
* Date Processing Started
* Category
* DateCreated
* DateModified
* Active
* File Processed
* Selected for Cataloguing
* Not Selected for Cataloguing
* Proofed
* Indexed
* Processing Complete
* Restricted
* fliqzid
* inmCreatedBy
* inmWatchers
* Thumbnail
* Descriptors_Geographic_t
* Descriptors_Geographic_t_date
* Language_of_Text_t
* Language_of_Text_t_date

Which ones might work?



## What's consistent reporting?

### Are projects reported?
People get a cheque and there's a contract,
and they''re supposed to write a report about what they did.

For every contract, which has an award number
(unique identifier), there should be a report.

Here's a fun question:
Which projects have at least one associated report?

Issues with that:

* Not all reports list the award number
  * (Tom thinks that maybe they should.)
  * They're required to
  * Sometimes the award number has to stay private, internal
* Should a project ever have more than one report?
    Possible, but it sounds unlikely.
* Multiple projects could have one report.
* There should be only one award number per report.

Here are all of the number columns in the metadata spreadsheet.

* CD Number
* Contract/Grant Number
* NTIS Number
* Stategic Objective Number
* Project Number
* Project Sub Number
* Report Number
* USAID Project Number

    u <- read.csv('26619efd-1cca-4d86-bf12-b12e8ecb915f.csv')
    u[grep('Number$', names(u), value = T)][c(2,7)]
    
http://pdf.usaid.gov/pdf_docs/PDACT673.pdf defines required reporting from contractor as:
a.  USAID award number (contract, cooperative agreement, grant, etc.), 
b.  USAID strategic objective title and number (if applicable),
c.  USAID project title and number (if applicable),
d.  USAID program area and program element,
e.  Descriptive title, (if non-English, a translation),
f.  Author name(s),
g.  Contractor or grantee name(s),
h.  Sponsoring USAID Agency operating unit(s), including the name of the current COR[1]
i.  Date of publication, and
j.  Language of document


[1]  Contract Officer on USAID side 

### Here's an idea
1. These are the ones that have the required numbers for the reporting.
2. This is how we can get the required numbers if they exist in the reports
    but haven't been entered as metadatataotaa into the DEC.
3. This is what we can do wonce we have nice catalogs of the id numbers.
  * Search tmhem
  * Compliaence
  * Maybe people will actually enter the data if a computer figures it all out.
  * Blah blah


## The thing we do

### Step 1
We made spreadsheet with these columns

* PDF.URL: The URL of the PDF file
* DEC.Project.Number: The project number reported in the DEC data
* Report.Project.Number: The project number reported in the PDF file
* Maybe country, region, issue area, &c.

Once we had that spreadsheet, we plotted stuff, comparing and aggregating by
countries, regions, issue areas, &c.

And then we'll look at what they say.

### Step 2, maybe

Connect that to [Foreign Assistance dashboard]()
in order to get the award amaonuts for each project.
Look at where mhoney has not been tracked at all.
