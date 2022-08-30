declare @CountryID int;

select	@CountryID = ID 
from	Country 
where	CountryCode = 'CA';
 
--load up this country with its states
insert into [State] (CountryID, [Name], Abbr, UtcOffset) values  
(@CountryID, 'Alberta', 'AB',-7)
, (@CountryID, 'British Columbia', 'BC',-8)
, (@CountryID,  'Manitoba', 'MB',-6)
, (@CountryID,  'New Brunswick', 'NB',-4)
, (@CountryID,  'Newfoundland and Labrador', 'NL',-4)
, (@CountryID,  'Northwest Territories', 'NT',-6)
, (@CountryID,  'Nova Scotia', 'NS',-4)
, (@CountryID, 'Nunavut Territory', 'NU',-6)
, (@CountryID,  'Ontario', 'ON',-5)
, (@CountryID,  'Prince Edward Island', 'PE',-4)
, (@CountryID,  'Québec', 'QC',-5)
, (@CountryID,  'Saskatchewan', 'SK',-6)
, (@CountryID,  'Yukon Territory', 'YT',-8)
 