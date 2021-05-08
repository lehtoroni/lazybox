<?php

// This is a simple function which will use the die command to display any data serialized as JSON.
// If there is a GET variable called 'pretty', the output will be pretty printed.

function r($a){
    if (isset($_GET['pretty'])) {
        die(json_encode($a, JSON_PRETTY_PRINT));
    } else {
        die(json_encode($a));
    }
}

?>
