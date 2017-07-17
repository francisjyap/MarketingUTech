<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
require("../sql_connect.php");

$result = $mysqli->query("SELECT `ojt_developer_system_id`, `create_website`, `organize`, `misc` 
						FROM `ojt_developer_system_tracker` 
						WHERE `track_date` = CURDATE() AND `account_id`=1"); /*$_SESSION['account_id']*/

$outp = "";
while($rs = $result->fetch_array(MYSQLI_ASSOC)) {
    if ($outp != "") {
        $outp .= ",";
    }
    $outp .= '{"OJT Developer System ID":"'  . $rs["ojt_developer_system_id"] . '",';
    $outp .= '"Create Website:"'   . $rs["create_website"]        . '",';
    $outp .= '"Organize":"'   . $rs["organize"]        . '",';
    $outp .= '"Misc":"'   . $rs["misc"]        . '"}';
}
$outp ='{"records":['.$outp.']}';
$mysqli->close();

echo($outp);
?>