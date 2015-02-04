<?php

// DPLA Submission Checker Configuration
$provider = "ESDN"; // DPLA Service Hub Name
$oaibaseurl = "http://repox.metro.org:8080/repox/OAIHandler"; // DPLA Service Hub Base URL
$metadataprefix = "mods";	 // If this changes, please edit stylesheets in /xsl accordingly
$harvestday = "19"; // Day of the month DPLA is scheduled to harvest
$helpcontact = "John Mignault"; // Name of Help Contact Person
$helpemail = "jmignault@metro.org"; // Email address for Help requests
$helpphone = "212 555 1234"; // Phone number for Help requests
$TZ = 'America/New_York';
$showharvestdate = 0;
				
// DO NOT EDIT
$dataprovider = isset($_GET['dataprovider']) ? $_GET['dataprovider'] : '';

?>