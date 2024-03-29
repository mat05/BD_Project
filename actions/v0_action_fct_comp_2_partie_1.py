
import sqlite3
from utils import display
from PyQt5.QtWidgets import QDialog
from PyQt5.QtCore import pyqtSlot
from PyQt5 import uic

# Classe permettant d'afficher la fonction à compléter 2
class AppFctComp2Partie1(QDialog):

    # Constructeur
    def __init__(self, data:sqlite3.Connection):
        super(QDialog, self).__init__()
        self.ui = uic.loadUi("gui/fct_comp_2.ui", self)
        self.data = data
        self.init_frame()

    def init_frame(self):
        try:
            result_0 = self.data.cursor().execute("SELECT distinct catZone FROM LesCategories")
            display.refreshGenericCombo(self.ui.comboBox_fct_comp_2, result_0)
        except Exception as e:
            display.refreshLabel(self.ui.label_fct_comp_2, "Erreur d'initialisation: " + repr(e))
        else:
            display.refreshLabel(self.ui.label_fct_comp_2, "")

    # Fonction de mise à jour de l'affichage
    @pyqtSlot()
    def refreshResult(self):
        # TODO 1.2 : fonction à modifier pour remplacer la zone de saisie par une liste de valeurs issues de la BD une fois le fichier ui correspondant mis à jour
        display.refreshLabel(self.ui.label_fct_comp_2, "")

        if not self.ui.comboBox_fct_comp_2.currentText():
            self.ui.table_fct_comp_2.setRowCount(0)
            display.refreshLabel(self.ui.label_fct_comp_2, "Veuillez choirisr une catégorie")
        else:
            try:
                cursor = self.data.cursor()
                result = cursor.execute(
                    "SELECT noPlace, noRang, noZone FROM LesPlaces NATURAL JOIN LesZones NATURAL JOIN LesCategories WHERE catZone = ?",
                    [self.ui.comboBox_fct_comp_2.currentText()])
            except Exception as e:
                self.ui.table_fct_comp_2.setRowCount(0)
                display.refreshLabel(self.ui.label_fct_comp_2, "Impossible d'afficher les résultats : " + repr(e))

            else:
                i = display.refreshGenericData(self.ui.table_fct_comp_2, result)
                if i == 0:
                    display.refreshLabel(self.ui.label_fct_comp_2, "Aucun résultat")