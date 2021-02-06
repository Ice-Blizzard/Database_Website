<HTML>
  <HEAD>
    <TITLE>Output</TITLE>
  </HEAD>
  <BODY>
    <FORM action="https://students.mimuw.edu.pl/~rs418393/website/admin/">
      <INPUT type="submit" name="SubmitButton" value="Go Back">
    </FORM>

    <?php
      $nee1 = $_REQUEST['ne1'];

      $conn = oci_connect(rs418393, xx, "//labora.mimuw.edu.pl/LABS");
      $sql = "INSERT INTO Teams (teamID) 
               VALUES ('".$nee1."')";

      $do = oci_parse($conn,$sql);
      $done = oci_execute($do);

      echo "<b>" . "Done." . "</b>" . "<br>\n";
      echo "<img src='https://students.mimuw.edu.pl/~rs418393/website/admin/good.jpg'>";
    ?>
  </BODY>
</HTML>
