const { Vonage } = require('@vonage/server-sdk')
const express = require('express');
const app = express();

  app.listen(3000, () => {
	console.log('Application listening on port 3000');
  });
