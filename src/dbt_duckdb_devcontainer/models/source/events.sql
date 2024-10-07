SELECT *
FROM read_csv('/mnt/data_sources/sample.tsv',
    delim = '\t',
    header = true
    )