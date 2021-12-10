
import sqlite3
from utils import display
from PyQt5.QtWidgets import QDialog
from PyQt5 import uic

# Classe permettant d'afficher la fonction fournie 2
class AppFctGererRep3(QDialog):

    #Constructeur
    def __init__(self, data:sqlite3.Connection):
        super(QDialog, self).__init__()
        self.ui = uic.loadUi("gui/fct_gerer_3.ui", self)
        self.data = data
        self.init_frame()

    # Fonction de mise à jour de l'affichage
    def init_frame(self):
        try:
            result_0 = self.data.cursor().execute("SELECT distinct nomSpec FROM LesSpectacles")
            display.refreshGenericCombo(self.ui.comboBox_spec, result_0)
        except Exception as e:
            display.refreshLabel(self.ui.label_gerer, "Impossible d'afficher les résultats : " + repr(e))
        else:
            display.refreshLabel(self.ui.label_gerer, "")

    def sel_spec(self):
        display.refreshLabel(self.ui.label_gerer, "")
        try:
            result_1 = self.data.cursor().execute("SELECT distinct dateRep FROM LesRepresentations JOIN LesSpectacles USING (noSpec) WHERE nomSpec = ?",
                                                  [self.ui.comboBox_spec.currentText()])
            display.refreshGenericCombo(self.ui.comboBox_MD, result_1)
            result_1 = self.data.cursor().execute("SELECT distinct dateRep FROM LesRepresentations JOIN LesSpectacles USING (noSpec) WHERE nomSpec = ?",
                                                  [self.ui.comboBox_spec.currentText()])
            display.refreshGenericCombo(self.ui.comboBox_SD, result_1)
            result_1 = self.data.cursor().execute("SELECT distinct promoRep FROM LesRepresentations WHERE dateRep = ?",
                [self.ui.comboBox_MD.currentText()])
            display.refreshGenericCombo(self.ui.comboBox_MP, result_1)
            result_1 = self.data.cursor().execute("SELECT distinct promoRep FROM LesRepresentations WHERE dateRep = ?",
                [self.ui.comboBox_SD.currentText()])
            display.refreshGenericCombo(self.ui.comboBox_SP, result_1)
        except Exception as e:
            display.refreshLabel(self.ui.label_gerer, "Impossible d'afficher les résultats : " + repr(e))
        else:
            display.refreshLabel(self.ui.label_gerer, "")

    def refresh_promoRep_mod(self):
        result_1 = self.data.cursor().execute("SELECT distinct promoRep FROM LesRepresentations WHERE dateRep = ?",
                                              [self.ui.comboBox_MD.currentText()])
        display.refreshGenericCombo(self.ui.comboBox_MP, result_1)

    def refresh_promoRep_supp(self):
        result_1 = self.data.cursor().execute("SELECT distinct promoRep FROM LesRepresentations WHERE dateRep = ?",
                                              [self.ui.comboBox_SD.currentText()])
        display.refreshGenericCombo(self.ui.comboBox_SP, result_1)

    def ajouter_rep(self):
        try:
            result_0 = self.data.cursor().execute("SELECT distinct noSpec FROM LesSpectacles WHERE nomSPec = ?",[self.ui.comboBox_spec.currentText()])
            self.data.cursor().execute("INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (?,?,?)",[result_0.fetchone()[0],self.ui.comboBox_jour.currentText()+'/'+self.ui.comboBox_mois.currentText()+'/'+self.ui.comboBox_annee.currentText()+' '+self.ui.comboBox_heure.currentText()+':'+self.ui.comboBox_minute.currentText(),self.ui.promoRepI.text().strip()])
        except Exception as e:
            display.refreshLabel(self.ui.label_gerer, "Impossible d'afficher les résultats : " + repr(e))
        else:
            display.refreshLabel(self.ui.label_gerer, "Insertion Réussie")

    def modifier_dateRep(self):
        try:
            self.data.cursor().execute("UPDATE LesRepresentations SET dateRep = ? WHERE promoRep = ? AND dateRep = ? AND nospec = (SELECT noSpec FROM LesSpectacles WHERE nomSpec = ?)",[self.ui.comboBox_jour_M.currentText()+'/'+self.ui.comboBox_mois_M.currentText()+'/'+self.ui.comboBox_annee_M.currentText()+' '+self.ui.comboBox_heure_M.currentText()+':'+self.ui.comboBox_minute_M.currentText(),self.ui.comboBox_MP.currentText(),self.ui.comboBox_MD.currentText(),self.ui.comboBox_spec.currentText()])
        except Exception as e:
            display.refreshLabel(self.ui.label_gerer, "Impossible d'afficher les résultats : " + repr(e))
        else:
            display.refreshLabel(self.ui.label_gerer, "Modification Réussie")

    def modifier_promoRep(self):
        try:
            self.data.cursor().execute("UPDATE LesRepresentations SET promoRep = ? WHERE promoRep = ? AND dateRep = ? AND nospec = (SELECT noSpec FROM LesSpectacles WHERE nomSpec = ?)",[self.ui.promoRepM.text().strip(),self.ui.comboBox_MP.currentText(),self.ui.comboBox_MD.currentText(),self.ui.comboBox_spec.currentText()])
        except Exception as e:
            display.refreshLabel(self.ui.label_gerer, "Impossible d'afficher les résultats : " + repr(e))
        else:
            display.refreshLabel(self.ui.label_gerer, "Modification Réussie")

    def supprimer_rep(self):
        try:
            self.data.cursor().execute("DELETE FROM LesRepresentations WHERE promoRep = ? AND dateRep = ? AND nospec = (SELECT noSpec FROM LesSpectacles WHERE nomSpec = ?)",[self.ui.comboBox_SP.currentText(),self.ui.comboBox_SD.currentText(),self.ui.comboBox_spec.currentText()])
        except Exception as e:
            display.refreshLabel(self.ui.label_gerer, "Impossible d'afficher les résultats : " + repr(e))
        else:
            display.refreshLabel(self.ui.label_gerer, "Suppression Réussie")