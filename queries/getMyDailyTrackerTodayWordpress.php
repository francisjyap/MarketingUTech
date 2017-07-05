<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
require("../sql_connect.php");

$result = $mysqli->query("SELECT wordpress_developer_id, fix_bug_cnt, create_pages_cnt,
            responsive_design_cnt, modify_pages_cnt, misc_cnt
            FROM writer_tracker 
            WHERE track_date = CURDATE() AND account_id=1"); /*$_SESSION['account_id']*/

$outp = "";
while($rs = $result->fetch_array(MYSQLI_ASSOC)) {
    if ($outp != "") {
        $outp .= ",";
    }
    $outp .= '{"WordpressId":"'  . $rs["wordpress_developer_id"] . '",';
    $outp .= '"FixBugCnt":"'   . $rs["fix_bug_cnt"]        . '",';
    $outp .= '"CreatePagesCnt":"'   . $rs["create_pages_cnt"]        . '",';
    $outp .= '"ResponsiveDesignCnt":"'   . $rs["responsive_design_cnt"]        . '",';
    $outp .= '"ModifyPagesCnt":"'   . $rs["modify_pages_cnt"]        . '",';
    $outp .= '"MiscCnt":"'   . $rs["misc_cnt"]        . '"}';
}
$outp ='{"records":['.$outp.']}';
$mysqli->close();

echo($outp);
?>