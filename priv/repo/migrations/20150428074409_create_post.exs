defmodule Sepal.Repo.Migrations.CreatePost do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :url, :string
      add :title, :string
      add :summary, :string
      add :content, :string
      add :published_at, :datetime

      timestamps
    end

    create index(:posts, [:url], unique: true)
    create index(:posts, [:published_at])
  end
end
