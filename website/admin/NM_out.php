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
      $nee2 = $_REQUEST['ne2'];
      $nee3 = $_REQUEST['ne3'];
      $nee4 = $_REQUEST['ne4'];
      $nee5 = $_REQUEST['ne5'];
      $nee6 = $_REQUEST['ne6'];
      $nee7 = $_REQUEST['ne7'];

      $conn = oci_connect(rs418393, xx, "//labora.mimuw.edu.pl/LABS");
      $sql = "INSERT INTO Movies (IDm, title, summary, director, year_of_release, duration_in_minutes, stars) 
               VALUES ('".$nee1."', '".$nee2."', '".$nee3."', '".$nee4."', '".$nee5."', '".$nee6."', '".$nee7."')";

      $do = oci_parse($conn,$sql);
      $done = oci_execute($do);

      echo "<b>" . "Done." . "</b>" . "<br>\n";
      echo "<img src='https://students.mimuw.edu.pl/~rs418393/website/admin/good.jpg'>";
    ?>
  </BODY>
</HTML>
