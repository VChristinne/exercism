
def is_criticality_balanced(temperature, neutrons_emitted):

    if temperature < 800 and neutrons_emitted > 500 and temperature * neutrons_emitted < 500000: 
        return True
    return False


def reactor_efficiency(voltage, current, theoretical_max_power):

    generated_power = voltage * current
    percentage_value = generated_power / theoretical_max_power * 100
    
    if percentage_value >= 80: 
        return 'green'
    if percentage_value >= 60: 
        return 'orange'
    if percentage_value >= 30: 
        return 'red'
    return 'black'


def fail_safe(temperature, neutrons_produced_per_second, threshold):
    
    calc = temperature * neutrons_produced_per_second
    status = calc / threshold * 100
    
    if status < 90: 
        return 'LOW'
    if status <= 110: 
        return 'NORMAL' 
    return 'DANGER'
    