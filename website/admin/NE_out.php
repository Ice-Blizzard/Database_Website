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

      $conn = oci_connect(rs418393, xx, "//labora.mimuw.edu.pl/LABS");
      $sql = "INSERT INTO Employees (PESEL, first_name, surname, gross_mouth_salary, date_of_employment, teamID) 
               VALUES ('".$nee1."', '".$nee2."', '".$nee3."', '".$nee4."', '".$nee5."', '".$nee6."')";

      $do = oci_parse($conn,$sql);
      $done = oci_execute($do);

      echo "<b>" . "Done." . "</b>" . "<br>\n";
      echo "<img src='https://students.mimuw.edu.pl/~rs418393/website/admin/good.jpg'>";
    ?>
  </BODY>
</HTML>
