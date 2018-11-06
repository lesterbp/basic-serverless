exports.hello = async () => ({
  statusCode: 200,
  body: JSON.stringify({
    message: `Hello ${process.env.NAME}`,
  }),
});
