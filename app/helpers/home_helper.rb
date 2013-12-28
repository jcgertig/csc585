module HomeHelper

  def artfactsForCounty(county)
    Artifact.find_all_by_county(county).count
  end
end
