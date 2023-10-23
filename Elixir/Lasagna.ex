defmodule Lasagna do
    @expected_minutes 40
    @layer_minutes 2

    def expected_minutes_in_oven(), do: 
        @expected_minutes

    def remaining_minutes_in_oven(remaining_minutes), do: 
        expected_minutes_in_oven() - remaining_minutes

    def preparation_time_in_minutes(layers), do: 
        @layer_minutes * layers

    def total_time_in_minutes(layers, remaining_minutes), do:
        preparation_time_in_minutes(layers) + remaining_minutes

    def alarm(), do: 
        "Ding!"

end
