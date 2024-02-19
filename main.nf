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
    sleep 30
    """
}

workflow {
  x = 'Hello'

  sayHello (x) | view
}
