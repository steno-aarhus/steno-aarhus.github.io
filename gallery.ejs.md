<% for (const item of items) { %>
<%if (item.homepageUrl) { %>
[<%= item.name %>](<%- item.homepageUrl %>)
<% } else { %>
[<%= item.name %>](https://github.com/steno-aarhus/<%= item.name %>)
<% } %>

: <%= item.description %>
<% } %>
