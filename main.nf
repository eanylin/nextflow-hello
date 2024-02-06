#!/usr/bin/env nextflow

process sayHello {
  input: 
    val x
  output:
    stdout
  script:
    """
    echo '$x world!'
    ls /mnt
    """
}

workflow {
  Channel.of('Bonjour', 'Hola') | sayHello | view
}
