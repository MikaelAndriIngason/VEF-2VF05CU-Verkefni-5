% rebase('base.tpl', title='Verkefni 5')

<form action="/send" method="POST">
  <fieldset>
    <label>Dagar</label>
    <input type="checkbox" name="nam" value="1">Dagur 1
    <input type="checkbox" name="nam" value="2">Dagur 2
    <input type="checkbox" name="nam" value="3">Dagur 3
  </fieldset>

  <fieldset>
    <label>Fyrilestur á dag 1</label>
    <input type="radio" name="dag1" value="Python">Python
    <input type="radio" name="dag1" value="JavaScript">JavaScript
    <input type="radio" name="dag1" value="Gagnasofn">Gagnasofn
  </fieldset>

  <fieldset>
    <label>Fyrilestur á dag 2</label>
    <input type="radio" name="dag2" value="Python">Python
    <input type="radio" name="dag2" value="JavaScript">JavaScript
    <input type="radio" name="dag2" value="Gagnasofn">Gagnasofn
  </fieldset>

  <fieldset>
    <label>Fyrilestur á dag 3</label>
    <input type="radio" name="dag3" value="Python">Python
    <input type="radio" name="dag3" value="JavaScript">JavaScript
    <input type="radio" name="dag3" value="Gagnasofn">Gagnasofn
  </fieldset>


  <label>Nafn:</label>
  <input type="text" name="nafn" required
  % if err == 1 or err == 3:
    placeholder="VILLA"
  % else:
    placeholder="Nafnið þitt"
  % end
  >

  <label>Heimilisfang:</label>
  <input type="text" name="heim" required
  % if err == 2 or err == 3:
    placeholder="VILLA"
  % else:
    placeholder="Heimilisfangið þitt"
  % end
  >

  <label>Netfang:</label>
  <input type="email" name="email" placeholder="Netfangið þitt" required>

  <label>Símanúmer:</label>
  <input type="text" name="simi" pattern="^(\+354 )?\d{3}[ -]?\d{4}$"/ placeholder="Símanúmerið þitt" required>

  <label>Klára pöntun</label>
  <button type="submit">Panta</button>
</form>

