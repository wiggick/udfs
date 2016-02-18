<cfscript>
/**
   getColumnInfo (Query q,String columnDelimiter = ",", String typeDelimiter = ",",String alignDelimiter = ",")
   Returns info structure containing original order of select query with info on column type and alignment based on type
   @param q  	           ColdFusion Query
   @param columnDelimiter  Separator for column List
   @param typeDelimiter    Separator for column type list
   @param alignDelmiter    Separator for alignment list      
   @return Returns a structure containing columns, column types, and column alignments 
   @author Chris Wigginton (c_wigginton@yahoo.com) 
   @version 1, February 18, 2016
 */
function getColumnInfo (Query q,String columnDelimiter = ",", String typeDelimiter = ",",String alignDelimiter = ","){
	var colType ="";
	var stFormat = "";
	var result = StructNew();
	result.col_name = ArrayToList(q.getMeta().getColumnLabels(),arguments.columnDelimiter);
			result.col_align = "";
			result.col_type = "";
			
			for (i=1;i LTE ListLen(result.col_name,arguments.columnDelimiter);i=i+1) {
				
				colType = q.getMeta().getColumnTypeName(i);
				
				result.col_type = ListAppend(result.col_type,colType,typeDelimiter);
			
				//arrange as you see fit, bascially character based columns are align left
				switch(colType){
					case "bigint":
					case "bit":
					case "date":
					case "datetime":
					case "datetime2":
					case "datetimeoffset":
					case "decimal":
					case "float":
					case "int":
					case "money":
					case "numeric":
					case "real":
					case "smalldatetime":
					case "smallint":
					case "smallmoney":
					case "time":
					case "tinyint":
						stFormat = "right";
						break;
					default:
						stFormat = "left";
						break;
					}
				result.col_align = listAppend(result.col_align,stFormat,arguments.alignDelimiter);
			}
			return result;
}	
</cfscript>

<cfquery name="qAdventure" datasource="AdventureWorks">
	select top 5 lastname,firstname,demographics from  person.person
</cfquery>
<cfdump var="#qAdventure#">
<cfdump var="#getColumnInfo(qAdventure)#">




	
