<HTML>
  <HEAD>
    <TITLE> Erised </TITLE>
  </HEAD>
  <BODY>
    <H2> Erised </H2>
    <FORM action="https://students.mimuw.edu.pl/~rs418393/website/">
      <INPUT type="submit" name="SubmitButton" value="Go Back">
    </FORM>

    <?PHP
      session_start();
      $conn = oci_connect(rs418393, xx, "//labora.mimuw.edu.pl/LABS");
      $sql1 = oci_parse($conn, "SELECT * FROM Movies ORDER BY IDm");
      oci_execute($sql1, OCI_NO_AUTO_COMMIT);
      while (($row = oci_fetch_array($sql1, OCI_BOTH))) {
        echo "<b>" . $row[0] . " " . $row[1] . "</b>" . "<br>\n" . $row[3] . " " . $row[4] . "<br>\n" . $row[2] . "<br>\n" . $row[5] . " minutes" . "<br>\n" . $row[6] . 	   "<br>\n" . "<br>\n" . "<br>\n";
      }
    ?>
  </BODY>
</HTML>
