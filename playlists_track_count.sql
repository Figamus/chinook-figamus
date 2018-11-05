/*Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resulant table.*/

SELECT
	pl.Name,
	Count(plt.TrackId) AS "Songs in Playlist"
FROM PlaylistTrack plt
JOIN Playlist pl ON plt.PlaylistId = pl.PlaylistId
GROUP BY plt.PlayListId