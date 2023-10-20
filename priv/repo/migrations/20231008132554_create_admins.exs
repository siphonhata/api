defmodule Tsbank.Repo.Migrations.CreateAdmins do
  use Ecto.Migration

  def change do
    create table(:admins, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :role, :string
      add :user_id, references(:users, on_delete: :nothing, type: :binary_id)

      timestamps()
    end

    create index(:admins, [:user_id])
  end
end
