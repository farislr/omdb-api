function findFirstStringInBracket(string = '') {
  const length = string.length

  if (length > 0) {
    let isFirstBracket = string[0] === '('
    let isLastBracket = string[length - 1] === ')'
    if (isFirstBracket && isLastBracket) {
      return string.substr(1, length - 2)
    } else {
      return ''
    }
  }
}

console.log(findFirstStringInBracket('(your first string)'))
