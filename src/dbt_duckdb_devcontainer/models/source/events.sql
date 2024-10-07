SELECT *
FROM read_csv('/mnt/data_sources/*.tsv',
    delim = '\t',
    header = true
    )