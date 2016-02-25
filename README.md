# ColdFusion User Defined Functions (UDF)
A collection of UDF's created by [Christopher Wigginton](c_wigginton@yahoo.com)

|UDF|Description|
|---|---|
|ArrayOfMatches|Returns array of all matches found in a string with a given regex.|
|DateConvertZ| Similar to DateConvert, but provides local2zone and zone2local conversion from one time zone to another.|
|Duration|Takes two date objects and returns a structure containing the duration of days, hours, and minutes.|
|GetSpanDate|Pass in a date object, with the span difference of days, hours, minutes, and seconds and returns a timestamp of the end of the span.|
|GetTimeStampFromHttpString|Converts HttpTimeString into a timestamp string.|
|QueryColumnInfo|Returns info structure containing original order of select query with info on column type and alignment based on type.|
|getDB2TimeStamp|Takes a ColdFusion date object and returns a DB2 formatted timestamp.|
|loremIpsum|Generates loremipsum text.  Based on JavaScript version created by Fatih Kadir AKIN https://github.com/f/loremjs/blob/master/lorem.js|
|vCal|Produces output used by the vCalendar standard for PIM's (such as Outlook).|
### The MIT License (MIT)
Copyright (c) 2016 Christopher Wigginton

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
