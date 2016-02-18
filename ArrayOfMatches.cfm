
<cfscript>
/* Returns array of all matches found in a given regex.
 *
 * @param str 		String containing text to match against
 * @param pattern   RegEx pattern that will be used, REFindNoCase is used
 * @returns 		Array of matches found
 * @author Christoper Wigginton (c_wigginton@yahoo.com)
 * @version 1, February 18, 2016
 */	
function ArrayOfMatches(String str hint="String that pattern will match against", String pattern hint="regex pattern") {
	var aryResult = ArrayNew(1);
	var stMatches ="";
	var pos = 1;
	var i = 2;
	do {
		stMatches = REFindNoCase(arguments.pattern,arguments.str,pos,true);
		if (arrayContains(stMatches.pos,0)){
			pos +=1;
			continue;
		}
		for(i=2;i lte ArrayLen(stMatches.len);i++){
			ArrayAppend(aryResult,mid(arguments.str,stMatches.pos[i],stMatches.len[i]));
		}
		pos = stMatches.pos[ArrayLen(stMatches.pos)] + stMatches.len[ArrayLen(stMatches.len)];
	} while (pos lt len(arguments.str));
	return aryResult;
}
</cfscript>


<cfset str = "Lots of matches (John Smith) (Mary Jane) (Foo) (Bar)">

<cfset regP1 = "(^[A-Z0-9 ]*)[^\(= ]*">
<cfset regP2 ="\(([^\(\)]*)\)">

<cfdump var="#ArrayOfMatches(str,regP1)#">
<cfdump var="#ArrayOfMatches(str,regP2)#">
