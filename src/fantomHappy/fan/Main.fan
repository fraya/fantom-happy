using util

class Main : AbstractMain
{
  @Arg { help = "Start number"}
  Int from

  @Arg { help = "End number" }
  Int to

  override Int run()
  {
    try
    {
      if (from < 1)
        throw ArgErr("'from' must be a positive number (> 0)")

      if (to < 1)
        throw ArgErr("'to' must be a positive number (> 0)")

      if (to <= from)
        throw ArgErr("'to' must be greater than 'from'")

      HappyNumbers(from..to).each { echo(it) }

      return 0
    }
    catch (ArgErr e)
    {
      log.err(e.msg)
      return 1
    }
  }
}
