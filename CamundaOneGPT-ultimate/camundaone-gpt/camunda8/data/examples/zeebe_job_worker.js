const { ZBClient } = require('zeebe-node');
const zbc = new ZBClient();
zbc.createWorker(null, 'notify-customer', async (job, complete) => {
  console.log('Notifying customer for order:', job.variables.orderId);
  complete.success();
});
