SELECT CountryName, IsoCode FROM Countries
WHERE Lower(CountryName) LIKE '%a%a%a%'
ORDER BY IsoCode