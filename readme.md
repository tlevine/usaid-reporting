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
