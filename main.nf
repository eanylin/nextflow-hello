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
    touch /data/test.txt
    echo 'This is test.txt file on nfs shared drive' > /data/test.txt
    """
}

workflow {
  x = 'Hello'

  sayHello (x) | view
}
