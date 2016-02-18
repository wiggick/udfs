<cfscript>
/**
 * Adds a timespan to a date.

GetSpanDate(dateObj, days, hours, minutes, seconds)

Pass in a date object, with the span difference of days, hours, minutes, and seconds and returns a timestamp of the end of the span.
 * 
 * @param dateObj  	 ColdFusion date object to use as the starting date. 
 * @param days 	 Number of days in the timespan 
 * @param hours 	 Number of hours in the timespan 
 * @param minutes 	 Number of minutes in the timespan. 
 * @param seconds 	 Number of seconds in the timespan. 
 * @return Returns a date/time object. 
 * @author Chris Wigginton (c_wigginton@yahoo.com) 
 * @version 1, December 12, 2001 
 */
function GetSpanDate(dateObj, days, hours, minutes, seconds){
  var timeDiff = CreateTimeSpan(days, hours, minutes, seconds);
  var spanDate = dateObj+timeDiff;
  return "{ts '" & DateFormat(spanDate, "yyyy-mm-dd ") & TimeFormat(spanDate, "HH:mm:ss") & "'}";
}
</cfscript>