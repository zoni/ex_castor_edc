defmodule CastorEDC.DataCollection.DataPoints.ReportInstanceDataPointCollection do
  @moduledoc """
  Provides access to report instance data point collection for all records
  """

  import CastorEDC
  alias CastorEDC.Client

  @doc """
  List all collected data points for report instances

  [More info](https://data.castoredc.com/api#/data-point-collection/get_study__study_id__data_point_collection_report_instance)
  """
  def list(%Client{} = client, study_id, params \\ []) do
    get(
      "api/study/" <> study_id <> "/data-point-collection/report-instance",
      client,
      params
    )
  end

  @doc """
  List all collected data points for a specific report instance

  [More info](https://data.castoredc.com/api#/data-point-collection/get_study__study_id__data_point_collection_report_instance__report_instance_id_)
  """
  def find(%Client{} = client, study_id, report_instance_id, params \\ []) do
    get(
      "api/study/" <> study_id <> "/data-point-collection/report-instance/" <> report_instance_id,
      client,
      params
    )
  end
end
