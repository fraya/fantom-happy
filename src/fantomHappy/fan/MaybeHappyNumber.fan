const class MaybeHappyNumber
{
  const Int number

  new make(Int number)
  {
    if (number < 1)
      throw ArgErr("must be a natural number")
    this.number = number
  }

  Bool isHappy()
  {
    val := number.toFloat
    for (; val > 9f;)
    {
      pdi := PerfectDigitalInvariant { it.number = val }
      val  = pdi.result
    }

    if (val == 1f || val == 7f)
      return true
    else
      return false
  }
}
