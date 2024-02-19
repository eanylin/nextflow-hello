#!/usr/bin/env nextflow

process sayHello {
  input: 
    val x
  output:
    stdout
  script:
    """
    echo 'My $x World!'
    ls /mnt
    """
}

workflow {
  x = 'Hello'

  sayHello (x) | view
}
