defmodule Explorer.Chain.Import.Stage.Addresses do
  @moduledoc """
  Imports addresses before anything else that references them because an unused address is still valid and recoverable
  if the other stage(s) don't commit.
  """

  alias Explorer.Chain.Import.{Runner, Stage}

  @behaviour Stage

  @runner Runner.Addresses

  @impl Stage
  def runners, do: [@runner]

  @chunk_size 1000

  @impl Stage
  def multis(runner_to_changes_list, options) do
    Stage.chunk_every(runner_to_changes_list, @runner, @chunk_size, options)
  end
end
