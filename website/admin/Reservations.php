<HTML>
  <HEAD>
    <TITLE> Erised </TITLE>
  </HEAD>
  <BODY>
    <H2> Erised </H2>
    <FORM action="https://students.mimuw.edu.pl/~rs418393/website/admin/">
      <INPUT type="submit" name="SubmitButton" value="Go Back">
    </FORM>

    <?PHP
      session_start();

      if (!isset($_SESSION['valid7admin'])) {
        echo "<b>" . "You are not the admin." . "</b>" . "<br>\n";
        echo "<img src='https://students.mimuw.edu.pl/~rs418393/website/admin/bad.jpg' >";
      }
      else {
        $conn = oci_connect(rs418393, xx, "//labora.mimuw.edu.pl/LABS");
        $sql1 = oci_parse($conn, "SELECT * FROM Reservations ORDER BY IDr");
        oci_execute($sql1, OCI_NO_AUTO_COMMIT);
        while (($row = oci_fetch_array($sql1, OCI_BOTH))) {
          echo "<b>" . $row[0] . " " . $row[2]. "</b>" . "<br>\n" .
            "Numbers of tickets: " . $row[1] . "<br>\n" .
            "ID of performance: " . $row[3] . "<br>\n" . "<br>\n" . "<br>\n";
        }
      }
    ?>
  </BODY>
</HTML>
