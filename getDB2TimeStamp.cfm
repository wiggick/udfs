<cfscript>
/**
 * Takes a ColdFusion date object and returns a DB2 formatted timestamp.
 * 
 * @param dateObj 	 A data object. (Required)
 * @param emulateTick 	 A boolean. (Required)
 * @return Returns a string. 
 * @author Chris Wigginton (c_wigginton@yahoo.com) 
 * @version 1, June 27, 2002 
 */
function getDB2TimeStamp(dateObj, emulateTick)
{
	var tick = "000000";
	// We can partially emulate milliseconds by 
	//grabbing the current tick and applying it to the date object
	if(emulateTick IS "Yes")
		tick = Right(GetTickCount(),3) & "000";
		
	return DateFormat(dateObj, "yyyy-mm-dd-") & TimeFormat(dateObj, "HH.mm.ss.") & tick; 
}
</cfscript>