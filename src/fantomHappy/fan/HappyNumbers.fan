const class HappyNumbers
{
  const Range range

  new make(Range range) { this.range = range }

  Void each(|Int n, Int index| f)
  {
    i := 0
    range.each |v|
    {
      i++
      if (MaybeHappyNumber(v).isHappy) f(v,i)
    }
  }

  Int[] all()
  {
    range.toList.findAll { MaybeHappyNumber(it).isHappy }
  }
}
