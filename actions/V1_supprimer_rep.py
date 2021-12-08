import sqlite3
from utils import display
from PyQt5.QtWidgets import QDialog
from PyQt5.QtCore import pyqtSlot
from PyQt5 import uic



# Classe permettant d'afficher la fonction fournie 1
class supprimer_rep(QDialog):

    # Constructeur
    def __init__(self, data: sqlite3.Connection):
        super(QDialog, self).__init__()
        self.ui = uic.loadUi("gui/fct_supprimer_rep_3.ui", self)
        self.data = data
        result_0 = self.data.cursor().execute("SELECT noSpec FROM V0_LesRepresentations ")


    def Supprimer(self):
        # display.refreshLabel(self.ui.label_fct_fournie_1, "")
        try:
            print("HELL12345")
            cursor = self.data.cursor()
            result = cursor.execute("INSERT INTO V0_LesRepresentations(noSpec,dateRep,promoRep) values (?,?,?)",[self.ui.lineEdit.text().strip()], [self.ui.lineEdit.text().strip()])

        except Exception as e:
            display.refreshLabel(self.ui.label_inserer, "Impossible d'ajouter cette représentation : " + repr(e))
        else:
            # display.refreshGenericData(self.ui.table_fct_fournie_1, result)
            print("HELLOFIN")

    """
    @pyqtSlot()

    def ajout_rep(self):
        # display.refreshLabel(self.ui.label_fct_fournie_1, "")
        try:
            print("HELL12345")
            # cursor = self.data.cursor()
            # result = cursor.execute("INSERT INTO V0_LesRepresentations(noSpec,dateRep,promoRep) values (?,?,?)",[self.ui.lineEdit.text().strip()], [self.ui.lineEdit.text().strip()])
        except Exception as e:
            display.refreshLabel(self.ui.label_inserer, "Impossible d'ajouter cette représentation : " + repr(e))
        else:
            # display.refreshGenericData(self.ui.table_fct_fournie_1, result)
            print("HELLOFIN")

    def modif_rep(self):

        display.refreshLabel(self.ui.label_fct_fournie_1, "")
        try:
            cursor = self.data.cursor()
            result = cursor.execute("SELECT nomSpec, dateRep FROM V0_LesRepresentations WHERE noSpec = 1")
        except Exception as e:
            self.ui.table_fct_fournie_1.setRowCount(0)
            display.refreshLabel(self.ui.label_fct_fournie_1, "Impossible d'afficher les résultats : " + repr(e))
        else:
            display.refreshGenericData(self.ui.table_fct_fournie_1, result)

    def supp_rep(self):

        display.refreshLabel(self.ui.label_fct_fournie_1, "")
        try:
            cursor = self.data.cursor()
            result = cursor.execute("SELECT nomSpec, dateRep FROM V0_LesRepresentations WHERE noSpec = 1")
        except Exception as e:
            self.ui.table_fct_fournie_1.setRowCount(0)
            display.refreshLabel(self.ui.label_fct_fournie_1, "Impossible d'afficher les résultats : " + repr(e))
        else:
            display.refreshGenericData(self.ui.table_fct_fournie_1, result)"""