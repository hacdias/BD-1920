<?php require __DIR__ . '/lib/lib.php'; ?>
<html>
<head>
  <meta http-equiv="Refresh" content="5; url=./incidences.php" />
  <meta char="UTF-8">
</head>
<body>
  <?php
    $email = $_REQUEST['email'];
    $anomaly = $_REQUEST['anomaly'];
    $item = $_REQUEST['item'];

    try {
      insertIncidence($anomaly, $item, $email);
      echo "<p>Incidência adicionada com sucesso.</p>";
    } catch (PDOException $e) {
      echo "<p>Ocorreu um erro:</p>";
      echo "<p style='color:red'>$e;</p>";
    }
    ?>
  <p>Será redirecionado dentro de 5 segundos.</p>
</body>
</html>
