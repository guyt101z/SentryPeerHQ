defmodule Sentrypeer.BillingSubscriptions.BillingSubscription do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "billing_subscriptions" do
    field :cancel_at, :naive_datetime
    field :cancelled_at, :naive_datetime
    field :current_period_end_at, :naive_datetime
    field :current_period_start, :naive_datetime
    field :status, :string
    field :stripe_id, :string
    field :auth_id, :binary_id

    belongs_to :user, Sentrypeer.Accounts.User,
      foreign_key: :id,
      define_field: false,
      references: :auth_id

    timestamps()
  end

  @doc false
  def changeset(billing_subscription, attrs) do
    billing_subscription
    |> cast(attrs, [
      :cancel_at,
      :cancelled_at,
      :current_period_end_at,
      :current_period_start,
      :status,
      :stripe_id,
      :auth_id
    ])
    |> validate_required([
      :current_period_end_at,
      :current_period_start,
      :status,
      :stripe_id,
      :auth_id
    ])
  end
end