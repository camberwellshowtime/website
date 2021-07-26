---
title: Performance dates
---

<div style='display: flex; justify-content: center;'>
  <h4 style='margin-right: 0.5rem;'>Dates and times</h4>
  <i class='material-icons' style='font-size: 1.2em; cursor: pointer' title='The show runs for somewhere in the realm of 2 and a half hours, including interval.'>info_outline</i>
</div>
<table>
  {% for performance in site.data.performances.performances %}
  <tr>
    <td style='padding-right: 3vw'>
      {{ performance.date | date: "%a %-d %B" }}
    </td>
    <td>
      <span style='display: inline-flex'>
        {{ performance.date | date: "%l%P" }}
        {% if performance.description != '' and performance.description != nil %}
          <i class='material-icons' style='margin-left: 0.2em; font-size: 1.2em; cursor: pointer'  title="{{ performance.description }}">info_outline</i>
        {% endif %}
      </span>
    </td>
  </tr>
  {% endfor %}
</table>
