<HTML>
  <HEAD>
    <TITLE> Erised </TITLE>
  </HEAD>
  <BODY>
    <H2> Delete Movie </H2>
    <FORM action="https://students.mimuw.edu.pl/~rs418393/website/admin/">
      <INPUT type="submit" name="SubmitButton" value="Go Back">
    </FORM>

    <?PHP
      session_start();
      $nee1 = $_REQUEST['ne1'];

      $conn = oci_connect(rs418393, xx, "//labora.mimuw.edu.pl/LABS");
      $sql = "DELETE FROM Movies WHERE IDm = '".$nee1."'";

      $do = oci_parse($conn,$sql);
      $done = oci_execute($do);

      echo "<b>" . "Done." . "</b>" . "<br>\n";
      echo "<img src='https://students.mimuw.edu.pl/~rs418393/website/admin/good.jpg'>";
    ?>
  </BODY>
</HTML>
