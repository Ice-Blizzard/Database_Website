<HTML>
  <HEAD>
    <TITLE>Output</TITLE>
  </HEAD>
  <BODY>
    <FORM action="https://students.mimuw.edu.pl/~rs418393/website/">
      <INPUT type="submit" name="SubmitButton" value="Go Back">
    </FORM>

    <?php
      $nee1 = $_REQUEST['ne1'];
      $nee2 = $_REQUEST['ne2'];
      $nee3 = $_REQUEST['ne3'];
      $nee4 = $_REQUEST['ne4'];

      $conn = oci_connect(rs418393, xx, "//labora.mimuw.edu.pl/LABS");
      $sql = "INSERT INTO Reservations (IDr, number_of_tickets, surname_of_client, ID) 
               VALUES ('".$nee1."', '".$nee2."', '".$nee3."', '".$nee4."')";

      $do = oci_parse($conn,$sql);
      $done = oci_execute($do);

      echo "<b>" . "Done." . "</b>" . "<br>\n";
      echo "<img src='https://students.mimuw.edu.pl/~rs418393/website/admin/good.jpg'>";
    ?>
  </BODY>
</HTML>
