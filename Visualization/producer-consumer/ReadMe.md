# Producer Consumer
Producer-Consumer simulates live data streaming into a `mongodb` database. This data is visualized by the line chart in the dashboard

# Instructions
Initially create dummy records in the database

    node create-db.js

This has to be done only for the first time.

## Run the producer

    node producer.js

## Run the consumer

    node app.js

## Open the dashboard in the browser
[http://localhost:3000/index.html](http://localhost:3000/index.html)