/*
   log4jq_spec.js
*/
describe("Log4jQ", function() {
  var log;

  beforeEach(function() {
    log = new Log();
  });

  it("should be able to log a message", function() {
    log.debug('message');
    expect(log.currentLogLevel).toEqual(Log.DEBUG);
  });
  it("日本語は大丈夫かな", function() {
    log.debug('message');
    expect(log.currentLogLevel).toEqual(Log.DEBUG);
  });
});
