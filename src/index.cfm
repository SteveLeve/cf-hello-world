<cfoutput>
  <H1>Hello World</H1>
Here's our entre customer list:<br>
<cfoutput>

<cfquery name="customers" datasource="Customers" username="webuser" password="letmein">
    select *
    from customers
</cfquery>

<cfoutput>
    <ul>
    <cfloop query="customers">
        <li>#customers.givenName# | #customers.surName#</li>
    </cfloop>
    </ul>
</cfoutput>
