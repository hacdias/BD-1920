<?php require __DIR__ . '/lib/lib.php'; ?>
<html>
<head>
  <meta char="UTF-8">
  <meta http-equiv="Refresh" content="5; url=./locals.php" />
</head>
<body>
  <?php
    $name = $_REQUEST['name'];
    $latitude = $_REQUEST['latitude'];
    $longitude = $_REQUEST['longitude'];

    try {
      insertLocal($name, $latitude, $longitude);
      echo "<p>Local $name adicionado com sucesso. </p>";
    } catch (PDOException $e) {
      echo "<p>Ocorreu um erro:</p>";
      echo "<p style='color:red'>$e;</p>";
    }
  ?>
  <p>Será redirecionado dentro de 5 segundos.</p>
</body>
</html>
