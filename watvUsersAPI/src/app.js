const express = require('express');
const cors = require('cors');
const app = express();

// Settings
app.set('port', process.env.PORT || 3000);

// Middlewares
app.use(cors());
app.use(express.json());

module.exports = app;
/*const express = require('express');
const app = express();
const morgan = require('morgan');
var mongoose = require('mongoose');
mongoose.connect('mongodb://localhost/test', {useNewUrlParser: true});

var db = mongoose.connection;
db.on('error', console.error.bind(console, 'connection error:'));
db.once('open', function() {
  // we're connected!
  console.log('MONGODB ATLAS CONNECTED')
});

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
});*/