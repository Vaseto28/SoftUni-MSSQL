CREATE FUNCTION udf_GetTouristsCountOnATouristSite (@Site VARCHAR(100)) 
RETURNS INT
AS
BEGIN 
    RETURN (
        SELECT COUNT(*) FROM Tourists AS t 
        JOIN SitesTourists AS st ON t.Id = st.TouristId
        JOIN Sites AS s ON st.SiteId = s.Id
        WHERE s.[Name] = @Site
    )
END