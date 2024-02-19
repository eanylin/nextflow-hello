#!/usr/bin/env nextflow

process sayHello {
  input: 
    val x
  output:
    stdout
  script:
    """
    echo '$x!'
    ls /mnt
    """
}

process sayWorld {
  input: 
    val y
  output:
    stdout
  script:
    """
    echo 'My $y world!'
    ls /mnt
    """
}

workflow {
  x = 'Hello'
  y = 'World'

  sayHello (x) | view
  sayWorld (y) | view
}
