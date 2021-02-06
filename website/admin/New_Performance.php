<HTML>
  <HEAD>
    <TITLE>Insert New Performance</TITLE>
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
      <FORM action="NP_out.php" method="post">
        ID: <INPUT type="text" name="ne1"> <br> <br>
        date_of_performance: <INPUT type="text" name="ne2"> <br> <br>
        cost_of_one_ticket_in_dollars: <INPUT type="text" name="ne3"> <br> <br>
        IDm: <INPUT type="text" name="ne4"> <br> <br>
        teamID: <INPUT type="text" name="ne5"> <br> <br>
        number_of_hall: <INPUT type="text" name="ne6"> <br> <br>
        <INPUT type="submit" name="SubmitButton" value="Insert!">
      </FORM>
    <?PHP endif; ?>
  </BODY>
</HTML>
