class HappyNumbersTest : Test
{
  Void test1to10()
  {
    numbers := HappyNumbers(1..10)
    verifyEq(numbers.all,[1,7,10])
  }
}
