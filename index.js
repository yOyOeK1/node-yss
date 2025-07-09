function telMeYourHome( whoAsking ){
    console.log(`node-yss teling [${whoAsking}] home address...
    ${__dirname}`);
    return __dirname;
}

module.exports = { telMeYourHome };