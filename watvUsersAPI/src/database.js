var mongoose = require('mongoose');

const URI = process.env.MONGODB_URI;
console.log('URI: ', URI);
mongoose.connect(URI, {useNewUrlParser: true, useUnifiedTopology: true});

var db = mongoose.connection;

db.on('error', console.error.bind(console, 'MONGODB ATLAS ERROR:'));
db.once('open', function() {
  // we're connected!
  console.log('MONGODB ATLAS CONNECTED')
});