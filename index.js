const host = process.env.HOST || '0.0.0.0'
const port = process.env.PORT || 8080
const cors_proxy = require('cors-anywhere')

cors_proxy
  .createServer({
    originWhitelist: [], // Allow all origins
    requireHeader: [],
    removeHeaders: [],
  })
  .listen(port, host, function () {
    console.info('Running CORS Anywhere on ' + host + ':' + port)
  })
