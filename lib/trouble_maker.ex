defmodule Logger.Backends.TroubleMaker do
  require Logger

  def init(_) do
    {:ok, nil}
  end

  def handle_event({_level, _gl, _event}, state) do
    Logger.info("Making trouble...")

    {:ok, state}
  end
end
