<HTML>
  <HEAD>
    <TITLE>Insert New Cinema Hall</TITLE>
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
      <FORM action="NCH_out.php" method="post">
        number_of_hall: <INPUT type="text" name="ne1"> <br> <br>
        number_of_seats: <INPUT type="text" name="ne2"> <br> <br>
        <INPUT type="submit" name="SubmitButton" value="Insert!">
      </FORM>
    <?PHP endif; ?>
  </BODY>
</HTML>
