<HTML>
  <HEAD>
    <TITLE>Insert New Employee</TITLE>
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
      <FORM action="NE_out.php" method="post">
        PESEL: <INPUT type="text" name="ne1"> <br> <br>
        first_name: <INPUT type="text" name="ne2"> <br> <br>
        surname: <INPUT type="text" name="ne3"> <br> <br>
        gross_mouth_salary: <INPUT type="text" name="ne4"> <br> <br>
        date_of_employment: <INPUT type="text" name="ne5"> <br> <br>
        teamID: <INPUT type="text" name="ne6"> <br> <br>
        <INPUT type="submit" name="SubmitButton" value="Insert!">
      </FORM>
    <?PHP endif; ?>
  </BODY>
</HTML>
