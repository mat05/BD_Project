
import sqlite3
from utils import display
from PyQt5.QtWidgets import QDialog
from PyQt5.QtCore import pyqtSlot
from PyQt5 import uic
from actions.V1_ajouter_rep import ajouter_rep
from actions.V1_modifier_rep import modifier_rep
from actions.V1_supprimer_rep import supprimer_rep
# Classe permettant d'afficher la fonction à compléter 2
class AppFctGererRep3(QDialog):

    fct_ajouter_rep_3_dialog = None
    fct_modifier_rep_3_dialog = None
    fct_supprimer_rep_3_dialog = None

    # Constructeur
    def __init__(self, data:sqlite3.Connection):
        super(QDialog, self).__init__()
        print("HELLLO")
        self.ui = uic.loadUi("gui/fct_gerer_3",self)
        print("ok")
        self.data = data
        # self.open_ajouter_rep()
        #self.open_modifier_rep()
       # self.open_supprimer_rep()
    # Fonction de mise à jour de l'affichage

    @pyqtSlot()
    def open_ajouter_rep(self):
        if self.fct_ajouter_rep_3_dialog is not None:
            self.fct_ajouter_rep_3_dialog.close()
        self.fct_ajouter_rep_3_dialog = ajouter_rep(self.data)
        self.fct_ajouter_rep_3_dialog.show()

    def open_modifier_rep(self):
        if self.fct_modifier_rep_3_dialog is not None:
            self.fct_modifier_rep_3_dialog.close()
        self.fct_modifier_rep_3_dialog = modifier_rep(self.data)
        self.fct_modifier_rep_3_dialog.show()

    def open_surpprimer_rep(self):
        if self.fct_supprimer_rep_3_dialog is not None:
            self.fct_supprimer_rep_3_dialog.close()
        self.fct_supprimer_rep_3_dialog = supprimer_rep(self.data)
        self.fct_supprimer_rep_3_dialog.show()