<HTML>
  <HEAD>
    <TITLE>Change Team</TITLE>
  </HEAD>
  <BODY>
    <FORM action="https://students.mimuw.edu.pl/~rs418393/website/admin/">
      <INPUT type="submit" name="SubmitButton" value="Go Back">
    </FORM>

    <?PHP
      session_start();
      if (!isset($_SESSION['valid7admin'])):
    ?>
      <b>You are not the admin.</b><br>
      <img src='https://students.mimuw.edu.pl/~rs418393/website/admin/bad.jpg'>
    <?PHP endif; ?>

    <?PHP
      if (isset($_SESSION['valid7admin'])):
    ?>
      <FORM action="CT_out.php" method="post">
        PESEL: <INPUT type="text" name="ne1"> <br> <br>
        New teamID: <INPUT type="text" name="ne2"> <br> <br>
        <INPUT type="submit" name="SubmitButton" value="Delete!">
      </FORM>
    <?PHP endif; ?>
  </BODY>
</HTML>
