defmodule CastorEDC.DataCollection.DataPoints.SurveyInstanceDataPointCollection do
  @moduledoc """
  Provides access to survey instance data point collection for all records
  """

  import CastorEDC
  alias CastorEDC.Client

  @doc """
  List all collected data points for all surveys

  [More info](https://data.castoredc.com/api#/data-point-collection/get_study__study_id__data_point_collection_survey_instance
  """
  def list(%Client{} = client, study_id, params \\ []) do
    get(
      "api/study/" <> study_id <> "/data-point-collection/survey-instance",
      client,
      params
    )
  end

  @doc """
  Find all collected data points for a specific survey instance

  [More info](https://data.castoredc.com/api#/data-point-collection/get_study__study_id__data_point_collection_survey_instance__survey_instance_id_
  """
  def find(%Client{} = client, study_id, survey_instance_id, params \\ []) do
    get(
      "api/study/" <> study_id <> "/data-point-collection/survey-instance/" <> survey_instance_id,
      client,
      params
    )
  end
end
