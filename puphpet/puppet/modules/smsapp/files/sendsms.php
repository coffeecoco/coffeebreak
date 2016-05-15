<html>
<head>
<title>SMS Message Sender</title>
</head>
<body bgcolor="#FFFFFF" text="#000000">

<?php
include("config.inc");
include("functions.inc");

if(!empty($_POST['submit'])) 

{
 echo "Sending the SMS Text message <b>\"$text\"</b> to the phone <b>$to</b>...<br>\n";
 $URL = "/cgi-bin/sendsms?username=".USERNAME."&password=".PASSWORD."&from=".GLOBAL_SENDER."&to=". $_POST["to"] . 
"&text=". $_POST["text"].urlencode($text);
 http_send($URL,SENDSMS_PORT);
 echo "<address><a href=\"$_PHP_SELF\">Back to Send SMS</a></address>\n";

} else {

?>

<h1>SMS Message Sender</h1>
<h3>Note: expect sms delays ( free Tier account )  :(</h3>
<form name="sendsms" method="post" action="<?php echo $_SERVER['PHP_SELF']?>">
<p>
Telephone number:
<br>
<input type="text" size="30" name="to">
</p>
<p>
Message:
<br>
<textarea cols="20" rows="5" name="text"></textarea>
</p>
<input type="submit" value="Send Message" name="submit">
<input type="reset" value="Reset">
<br>
</form>

<?php
}
?>

<p>
</p>
<hr>
<table border="0" width="100%">
  <tr>
    <td width="50%"><address><a href="index.html">Back to admin</a></address></td>
<h3>Note: After coninous testing, it now appears the carrier is restricting free accounts since past few days, Deeply 
sorry</h3>
<h3>Note: You are supposed to get an SMS with a Masked Source number</h3>


    <td width="50%" align="right"><address>Visit the Kannel homepage at <a 
href="http://www.kannel.org">www.kannel.org</a>.</address></td>
  </tr>
</table>
</body>
</html>
