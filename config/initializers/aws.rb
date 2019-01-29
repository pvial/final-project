AWS.config(
  :access_key_id => "AKIAIP4UGMMLQATMKIWQ",
  :secret_access_key => "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"
)

S3_BUCKET =  AWS::S3.new.buckets["repositorio-portal"]