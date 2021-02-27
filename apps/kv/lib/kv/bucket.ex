defmodule KV.Bucket do
  def start_link(_content) do
    Agent.start_link fn -> %{} end
  end

  def get(agent, key) do
    Agent.get(agent, &Map.get(&1, key))
  end

  def put(agent, key , value) do
    Agent.update(agent, &Map.put(&1, key, value))
  end
end
