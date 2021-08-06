String twoFer([String name = "you"]) {
  return ('One for ${name == '' ? name = 'you' : name}, one for me.');
}
