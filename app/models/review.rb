class Review
  attr_reader :summary, :publication_date

  def initialize(attributes = {})
    @summary = attributes[:summary]
    @publication_date = attributes[:publication_dt]
  end
end
