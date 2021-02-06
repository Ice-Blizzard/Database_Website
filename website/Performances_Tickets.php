<HTML>
  <HEAD>
    <TITLE> Erised </TITLE>
  </HEAD>
  <BODY>
    <H2> Performances </H2>
    <FORM action="https://students.mimuw.edu.pl/~rs418393/website/">
      <INPUT type="submit" name="SubmitButton" value="Go Back">
    </FORM>

    <?PHP
      session_start();
      $conn = oci_connect(rs418393, xx, "//labora.mimuw.edu.pl/LABS");
      $sql1 = oci_parse($conn, "SELECT * FROM Performances ORDER BY ID");
      oci_execute($sql1, OCI_NO_AUTO_COMMIT);
      while (($row = oci_fetch_array($sql1, OCI_BOTH))) {
        echo "<b>" . $row[0] . " " . $row[1]. "</b>" . "<br>\n" .
          "Cost (1 ticket): " . $row[2] . "<br>\n" .
          "ID of the movie: " . $row[3] . "<br>\n" .
          "Employeers team: " . $row[4] . "<br>\n" .
          "Hall number: " . $row[5] . "<br>\n" . "<br>\n" . "<br>\n";
      }

      echo "<b>" . "Already Reserved Tickets:" . "</b>" . "<br>\n";

      $sql2 = oci_parse($conn, 
        "SELECT SUM(number_of_tickets) ile, ID FROM Reservations GROUP BY ID ORDER BY ID");
      oci_execute($sql2, OCI_NO_AUTO_COMMIT);
      while (($row = oci_fetch_array($sql2, OCI_BOTH))) {
        echo 
          "ID of Performance: " . $row[1] . "<br>\n" .
          "Number of already reseved tickets: " . $row[0] . "<br>\n";
      }

    ?>
  </BODY>
</HTML>
