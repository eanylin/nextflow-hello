#!/usr/bin/env nextflow

process sayHello {
  input: 
    val x
  output:
    stdout
  script:
    """
    echo '$x world!'
    ls /var/tmp
    """
}

workflow {
  Channel.of('Bonjour') | sayHello | view
}
