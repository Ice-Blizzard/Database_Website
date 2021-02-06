<HTML>
  <HEAD>
    <TITLE> Erised </TITLE>
  </HEAD>
  <BODY>
    <H2> Cinema Halls </H2>
    <FORM action="https://students.mimuw.edu.pl/~rs418393/website/">
      <INPUT type="submit" name="SubmitButton" value="Go Back">
    </FORM>

    <?PHP
      session_start();
      $conn = oci_connect(rs418393, xx, "//labora.mimuw.edu.pl/LABS");
      $sql1 = oci_parse($conn, "SELECT * FROM Cinema_Halls ORDER BY number_of_hall");
      oci_execute($sql1, OCI_NO_AUTO_COMMIT);
      while (($row = oci_fetch_array($sql1, OCI_BOTH))) {
        echo "Hall number " . $row[0] . " has " . "<b>" . $row[1] . "</b>" . " seats" . "<br>\n";
      }
    ?>
  </BODY>
</HTML>
