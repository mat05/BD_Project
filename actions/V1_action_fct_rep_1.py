
import sqlite3
from utils import display
from PyQt5.QtWidgets import QDialog
from PyQt5.QtCore import pyqtSlot
from PyQt5 import uic

# Classe permettant d'afficher la fonction à compléter 2
class AppFctRep1(QDialog):

    # Constructeur
    def __init__(self, data:sqlite3.Connection):
        super(QDialog, self).__init__()
        self.ui = uic.loadUi("gui/fct_rep_1.ui", self)
        self.data = data
        self.refreshResult()

    # Fonction de mise à jour de l'affichage
    @pyqtSlot()
    def refreshResult(self):

        print("OK1\n")
        display.refreshLabel(self.ui.label_fct_rep_1, "")
        try:
            cursor = self.data.cursor()
            print("OK2\n")
            result = cursor.execute("SELECT noSpec, nomSpec, dateRep, promoRep, prixRep FROM P2_LesRepresentations")
            print("OK3\n")
        except Exception as e:
            self.ui.table_fct_rep_1.setRowCount(0)
            display.refreshLabel(self.ui.label_rep_1, "Impossible d'afficher les résultats : " + repr(e))
        else:
            display.refreshGenericData(self.ui.table_fct_rep_1, result)



