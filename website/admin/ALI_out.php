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

      if($nee1 != "admin7hp20" || $nee2 != "inverse7mirror") {
        echo "<b>" . "Unable to log in as the admin. Wrong username or password." . "</b>" . "<br>\n";
        echo "<img src='https://students.mimuw.edu.pl/~rs418393/website/admin/bad.jpg' >";
      }

      else {
        session_start();
        $_SESSION['valid7admin'] = TRUE;
        echo "<b>" . "Logged in successfully." . "</b>" . "<br>\n";
        echo "<img src='https://students.mimuw.edu.pl/~rs418393/website/admin/good.jpg'>";
      }
    ?>
  </BODY>
</HTML>
