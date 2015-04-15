function getPrimes(max) {
    var sieve = [], i, j, primes = [];
    for (i = 2; i <= max; ++i) {
        if (!sieve[i]) {
            // i has not been marked -- it is prime
            primes.push(i);
            for (j = i << 1; j <= max; j += i) {
                sieve[j] = true;
            }
        }
    }
    return primes;
}

//http://www.javascripter.net/faq/numberisprime.html
// view-source:http://www.javascripter.net/math/calculators/primefactorscalculator.htm
// largest number 9007199254740992  alert([Number.MAX_VALUE, Number.MIN_VALUE]);
//https://github.com/oftn/core-estimator#api
//speed-battle.com