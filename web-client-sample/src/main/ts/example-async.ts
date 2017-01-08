async function main() {
  console.log("waiting 1sec.");
  await scheduleMsec(1000);
  console.log("done.");
}

function scheduleMsec(msec: number) {
  return new Promise( (resolve, reject) => setTimeout(function() { resolve(); }, msec) );
// return new Promise( resolve => setTimeout(resolve, msec) );
}

main();
