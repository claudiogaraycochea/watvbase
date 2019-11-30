var mongoose = require('mongoose');

const URI = (process.env.npm_lifecycle_event === 'prod') ? 
  process.env.MONGODB_URI_PROD
  : process.env.MONGODB_URI_DEV;

console.log('ENVIRONMENT     : ', process.env.npm_lifecycle_event);
console.log('URI DB          : ', URI);

mongoose.connect(URI, {
  useNewUrlParser: true,
  useUnifiedTopology: true,
  useCreateIndex: true,
});

var db = mongoose.connection;

db.on('error', console.error.bind(console, 'MONGODB ATLAS ERROR:'));
db.once('open', function() {
  // we're connected!
  console.log('MONGODB STATUS  : CONNECTED')
});