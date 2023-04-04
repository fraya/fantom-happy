#! /usr/bin/env fan

using build

class Build : BuildGroup
{
  new make()
  {
    childrenScripts =
    [
      `fantomHappy/build.fan`,
    ]
  }
}
