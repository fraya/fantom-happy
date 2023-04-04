const class PerfectDigitalInvariant
{
  const Float number
  const Float p  := 2f
  const Int base := 10

  new make(|This| f) { f(this) }

  private Int sumLimit()
  {
    Logarithm
    {
      it.number = this.number
      it.base   = this.base
    }
    .result
    .floor
    .toInt
  }

  Float result()
  {
    acc   := 0.0f
    limit := sumLimit

    for (i := 0; i <= limit; i++)
    {
      basePowerI  := base.pow(i)
      numerator   := (number % base.pow(i+1)) - (number % basePowerI)
      denominator := basePowerI

      acc += (numerator / denominator).pow(p)
    }

    return acc
  }

}
