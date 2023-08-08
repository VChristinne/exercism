EXPECTED_BAKE_TIME = 40
PREPARATION_TIME = 2


def bake_time_remaining(elapsed_time_remaining):
    return EXPECTED_BAKE_TIME - elapsed_time_remaining


def preparation_time_in_minutes(number_layers):
    return number_layers * PREPARATION_TIME


def elapsed_time_in_minutes(number_layers, elapsed_bake_time):
    return preparation_time_in_minutes(number_layers) + elapsed_bake_time