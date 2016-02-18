<cfscript>
/**
 * Converts HttpTimeString into a timestamp string.
 * 
 * @param httpTime 	 HttpTimeString 
 * @return Returns a timestamp string. 
 * @author Chris  Wigginton (c_wigginton@yahoo.com) 
 * @version 1, November 26, 2001 
 */
function GetTimeStampFromHttpTimeString(httpTime) {
	var dateParts = ListToArray(httpTime, " ");
	var timeStamp = "{ts '" & dateParts[4] & "-" & DateFormat("#DateParts[3]#/1/2000", "mm") & "-" & dateParts[2] & " " & dateParts[5] & "'}";
	return timeStamp;
}
</cfscript>