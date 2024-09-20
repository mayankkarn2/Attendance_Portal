const cds = require('@sap/cds');

module.exports = cds.service.impl((srv) => {
  srv.on('addRegion', (req, res) => {
    console.log(req.data.payload + ' region added');
    return true;
  });
})