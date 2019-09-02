---
title: Performance dates
---

<div style='display: flex; justify-content: center;'>
  <h4 style='margin-right: 0.5rem;'>Dates and times</h4>
  <i class='material-icons' style='font-size: 1.2em; cursor: pointer' title='The show runs for somewhere in the realm of 2 and a half hours, including interval.'>info_outline</i>
</div>
<table>
  {% for performance in site.data.performances.geelong %}
  <tr>
    <td style='padding-right: 3vw'>
      {{ performance.date | date: "%a %-d %B" }}
    </td>
    <td style='text-align: right'>
      {{ performance.date | date: "%l:%M%P" }}
    </td>
  </tr>
  {% if !!performance.description == true %}
  <tr>
    <td colspan=2>
      <i>{{ performance.description }}</i>
      {% comment %}broken{% endcomment %}
    </td>
  </tr>
  {% endif %}
  {% endfor %}
</table>
<div style='margin-top: 3rem; text-align: center'>
  <a href='{{ site.data.general.geelong_tickets_url }}' style='font-size: 2rem; font-family: "Orbitron";'>Buy Geelong Showtime tickets!</a>
</div>
