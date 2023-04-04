const class Logarithm
{
  const Float number
  const Int base

  new make(|This| f) { f(this) }

  Float result()
  {
    number.log10 / base.toFloat.log10
  }
}
