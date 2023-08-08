
def response(hey_bob):
    
    speech = hey_bob.strip()

    if not speech:
        return "Fine. Be that way!"

    is_question = speech.endswith("?")
    is_shouting = speech.isupper()

    if is_question and is_shouting:
        return "Calm down, I know what I'm doing!"
    if is_question:
        return "Sure."
    if is_shouting:
        return "Whoa, chill out!"

    return "Whatever."