<HTML>
  <HEAD>
    <TITLE>Insert New Movie</TITLE>
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
      <FORM action="NM_out.php" method="post">
        IDm: <INPUT type="text" name="ne1"> <br> <br>
        title: <INPUT type="text" name="ne2"> <br> <br>
        summary: <INPUT type="text" name="ne3"> <br> <br>
        director: <INPUT type="text" name="ne4"> <br> <br>
        year_of_release: <INPUT type="text" name="ne5"> <br> <br>
        duration_in_minutes: <INPUT type="text" name="ne6"> <br> <br>
        stars: <INPUT type="text" name="ne7"> <br> <br>
        <INPUT type="submit" name="SubmitButton" value="Insert!">
      </FORM>
    <?PHP endif; ?>
  </BODY>
</HTML>
