<?php

// This script corrects the client's forwarded IP address
// for "regular usage" when running behind Cloudflare

$proxyIp = null;
if (isset($_SERVER['HTTP_CF_CONNECTING_IP'])) {
    $proxyIp = $_SERVER['REMOTE_ADDR'];
    $_SERVER['REMOTE_ADDR'] = $_SERVER['HTTP_CF_CONNECTING_IP'];
}

?>
