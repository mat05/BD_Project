
import sqlite3
from utils import display
from PyQt5.QtWidgets import QDialog
from PyQt5.QtCore import pyqtSlot
from PyQt5 import uic

# Classe permettant d'afficher la fonction fournie 1
class AppFctGererRes3(QDialog):

    # Constructeur
    def __init__(self, data:sqlite3.Connection):
        super(QDialog, self).__init__()
        self.ui = uic.loadUi("gui/fct_gerer_res_3.ui", self)
        self.data = data
        self.refreshResult()

    # Fonction de mise à jour de l'affichage
    @pyqtSlot()
    def ajout_res(self):
        display.refreshLabel(self.ui.label_fct_fournie_1, "")
        try:
            cursor = self.data.cursor()
            result = cursor.execute("INSERT INTO LesTickets(noDos,dateAchat,dateRep,noPlace,noRang,noSpec,noType) values (69,CURRENT_TIMESTAMP,?,?,?,?,?)",[self.ui.lineEdit.text().strip()], [self.ui.lineEdit.text().strip()], [self.ui.lineEdit.text().strip()], [self.ui.lineEdit.text().strip()], [self.ui.lineEdit.text().strip()])
        except Exception as e:
            self.ui.table_fct_fournie_1.setRowCount(0)
            display.refreshLabel(self.ui.label_fct_fournie_1, "Impossible d'afficher les résultats : " + repr(e))
        else:
            display.refreshGenericData(self.ui.table_fct_fournie_1, result)




    def modif_res(self):

        display.refreshLabel(self.ui.label_fct_fournie_1, "")
        try:
            cursor = self.data.cursor()
            result = cursor.execute("SELECT nomSpec, dateRep FROM V0_LesRepresentations WHERE noSpec = 1")
        except Exception as e:
            self.ui.table_fct_fournie_1.setRowCount(0)
            display.refreshLabel(self.ui.label_fct_fournie_1, "Impossible d'afficher les résultats : " + repr(e))
        else:
            display.refreshGenericData(self.ui.table_fct_fournie_1, result)

    def supp_res(self):

        display.refreshLabel(self.ui.label_fct_fournie_1, "")
        try:
            cursor = self.data.cursor()
            result = cursor.execute("SELECT nomSpec, dateRep FROM V0_LesRepresentations WHERE noSpec = 1")
        except Exception as e:
            self.ui.table_fct_fournie_1.setRowCount(0)
            display.refreshLabel(self.ui.label_fct_fournie_1, "Impossible d'afficher les résultats : " + repr(e))
        else:
            display.refreshGenericData(self.ui.table_fct_fournie_1, result)