import unittest
from bank import compte_en_banque

class testbank(unittest.TestCase):
    def banque_negatif(self):
        self.assertEqual(compte_en_banque(-10),'négatif')

    def banque_positif(self):
        self.assertEqual(compte_an_banque(60),'positif')

    def test_carré(self):
        self.assertEqual(compte_en_banque(0),'null')

    def test_isupper(self):
        with self.assertRaises(ValueError):
            compte_en_banque("gfhjdkl")
