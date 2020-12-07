---
title: Cast dates
---

<div style='display: flex; justify-content: center;'>
  <h4 style='margin-right: 0.5rem;'>Cast dates</h4>
</div>
<div style='position: relative'>
  <div data-role='short-dates' style='min-width: 300px; position: absolute; left: 0; right: 0; top: 0; bottom: 0; display: flex; flex-direction: column; text-align: center'>
    <div style='margin-bottom: 1em'><span style='font-weight: bold'>Applications open 🎉</span><br>8 February</div>
    <div style='margin-bottom: 1em'><span style='font-weight: bold'>Get to know you "audition"*</span><br>1 or 2 May</div>
    <div style='margin-bottom: 1em'><span style='font-weight: bold'>8 rehearsals</span><br>23 May to 25 July</div>
    <div style='margin-bottom: 1em'><span style='font-weight: bold'>4 dress rehearsals</span><br>1 to 5 August</div>
    <div style='margin-bottom: 1em'><span style='font-weight: bold'>8 performances</span><br>6 to 14 August</div>
    <i>* Not really an audition - everybody is accepted!</i>
    <button style='margin-top: 1em; border: none; text-decoration: underline; background: none' type='button' data-role='show-all-dates'>Show exact dates</button>
  </div>
  <div data-role='all-dates' style='visibility: hidden'>
    <table style='min-width: 300px'>
      {% for event in site.data.cast.cast %}
      <tr>
        <td style='padding-right: 3vw'>
          {{ event.description }}
        </td>
        <td>
          {{ event.date }}
        </td>
      </tr>
      {% endfor %}
    </table>
    <i>* Not really an audition - everybody is accepted!</i>.
  </div>
</div>
<script>
  document.querySelector('[data-role="show-all-dates"]').onclick = function(e) {
    document.querySelector('[data-role="short-dates"]').style.visibility = 'hidden'
    document.querySelector('[data-role="all-dates"]').style.visibility = 'visible'
  }
</script>
