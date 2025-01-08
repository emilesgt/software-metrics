"""
This module contains a function to determine the state of a bank account balance.
"""

def compte_en_banque(number: int) -> str:
    """
    Determines if a bank account balance is negative, null, or positive.
    
    Args:
        number (int): The balance amount.
    
    Returns:
        str: The state of the balance ("négatif", "null", "positif").
    """
    if not isinstance(number, int):
        return "Error: Integer required"  # Consistent return statement

    if number < 0:
        return "négatif"

    if number == 0:
        return "null"

    return "positif"
