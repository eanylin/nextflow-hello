#!/usr/bin/env nextflow

process sayHello {
  input: 
    val x
  output:
    stdout
  script:
    """
    echo 'My $x World!'
    ls /data
    """
}

workflow {
  x = 'Hello'

  sayHello (x) | view
}
