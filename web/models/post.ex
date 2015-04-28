defmodule Sepal.Post do
  use Sepal.Web, :model

  schema "posts" do
    field :url, :string
    field :title, :string
    field :summary, :string
    field :content, :string
    field :published_at, Ecto.DateTime

    timestamps
  end

  @required_fields ~w(url title summary content published_at)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If `params` are nil, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ nil) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
