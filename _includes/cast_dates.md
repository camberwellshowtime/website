---
title: Cast dates
---

<div style='display: flex; justify-content: center;'>
  <h4 style='margin-right: 0.5rem;'>Cast dates</h4>
</div>
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
