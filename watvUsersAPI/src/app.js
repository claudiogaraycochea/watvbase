const express = require('express');
const app = express();
const morgan = require('morgan');

// Settings
app.set('port', process.env.PORT || 3000);

// Middlewares
app.use(morgan('combined'));
app.use(express.urlencoded({extended: false}));
app.use(express.json());

// Routes
app.use('/api/users', require('./routes/index'));
app.use('/api/channels', require('./routes/channels'));

// Starting the server
app.listen(app.get('port'), () => {
  console.log(`Server on port ${3000}`);
});