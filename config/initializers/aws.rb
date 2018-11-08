AWS.config(
  :access_key_id => "AKIAINAZUAKXLFJMFP5A",
  :secret_access_key => "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"
)

S3_BUCKET =  AWS::S3.new.buckets["repositorio-portal"]