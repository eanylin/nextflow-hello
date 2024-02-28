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
    # cat /data/test.txt
    sleep 120
    """
}

workflow {
  x = 'Hello'

  sayHello (x) | view
}
