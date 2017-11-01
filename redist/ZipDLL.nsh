;ZipDLL include file for NSIS
;Written by Tim Kosse (mailto:tim.kosse@gmx.de)
;Compatible with Modern UI 1.62

;German translation by Tim Kosse
;Spanish translation by "dark_boy"
;French translation by "veekee"
;Brazilian Portuguese translation by "deguix"
;Traditional Chinese traslation by "matini"


!ifndef MUI_MACROS_USED
  !error "Please include modern UI first!!"
!endif

!ifndef MUI_ZIPDLL_USED

!define MUI_ZIPDLL_USED

!macro MUI_ZIPDLL_EXTRACTFILE SOURCE DESTINATION FILE

  Push "${FILE}"
  Push "${DESTINATION}"
  Push "${SOURCE}"

  ;The strings that will be translated are:

  ;"  Error: %s"
  ;"Could not get file attributes."
  ;"Error: Could not get file attributes."
  ;"Could not extract %s"
  ;"  Error: Could not extract %s"
  ;"Specified file does not exist in archive."
  ;"Error: Specified file does not exist in archive."
  ;"Extracting the file %s from %s to %s"

  !ifdef "MUI_LANGUAGEFILE_FRENCH_USED"
    strcmp $LANGUAGE ${LANG_FRENCH} 0 +10
    Push "  Erreur : %s"
    Push "Impossible de r�cup�rer les informations sur le fichier."
    Push "Erreur : Impossible de r�cup�rer les informations sur le fichier."
    Push "Impossible de d�compresser %s."
    Push "  Erreur : Impossible de d�compresser %s."
    Push "Le fichier sp�cifi� n'existe pas dans l'archive"
    Push "Erreur : Le fichier sp�cifi� n'existe pas dans l'archive"
    Push "D�compression du fichier %s depuis %s vers %s"
    Push "/TRANSLATE"
  !endif
  !ifdef "MUI_LANGUAGEFILE_GERMAN_USED"
    strcmp $LANGUAGE ${LANG_GERMAN} 0 +10
    Push "  Fehler: %s"
    Push "Dateiattribute konnten nicht ermittelt werden."
    Push "Fehler: Dateiattribute konnten nicht ermittelt werden."
    Push "%s konnte nicht dekomprimiert werden."
    Push "  Fehler: %s konnte nicht dekomprimiert werden."
    Push "Die angegebene Datei existiert nicht im Archiv"
    Push "Fehler: Die angegebene Datei existiert nicht im Archiv"
    Push "Dekomprimiere Datei %s von %s nach %s"
    Push "/TRANSLATE"
  !endif
  !ifdef "MUI_LANGUAGEFILE_SPANISH_USED"
    strcmp $LANGUAGE ${LANG_SPANISH} 0 +10
    Push "Error: %s"
    Push "No se obtuvieron atributos del archivo"
    Push "Error: No se obtuvieron atributos del archivo"
    Push "No se pudo extraer %s"
    Push "  Error: No se pudo extraer %s"
    Push "Archivo especificado no existe en el ZIP"
    Push "Error: El archivo especificado no existe en el ZIP"
    Push "Extrayendo el archivo %s de %s a %s"
    Push "/TRANSLATE"
  !endif
  !ifdef "MUI_LANGUAGEFILE_PORTUGUESEBR_USED"
    strcmp $LANGUAGE ${LANG_PORTUGUESEBR} 0 +10
    Push "Erro: %s"
    Push "N�o se pode ler os atributos do arquivo"
    Push "Error: N�o se pode ler os atributos do arquivo"
    Push "N�o se pode extrair %s"
    Push "  Erro: N�o se pode extrair %s"
    Push "O arquivo especificado n�o existe no ZIP"
    Push "Erro: O arquivo especificado n�o existe no ZIP"
    Push "Extraindo o arquivo %s de %s a %s"
    Push "/TRANSLATE"
  !endif
  !ifdef "MUI_LANGUAGEFILE_TRADCHINESE_USED"
    StrCmp $LANGUAGE ${LANG_TRADCHINESE} 0 +10
	Push "  ���~�G%s"
	Push "�L�k���o�ɮ��ݩʡC"
	Push "���~�G�L�k���o�ɮ��ݩʡC"
	Push "�L�k�����Y %s"
	Push "  ���~�G�L�k�����Y %s"
	Push "���w���ɮפ��s�b�����Y�ɤ��C"
	Push "���~�G���w���ɮפ��s�b�����Y�ɤ��C"
	Push "���b�����Y�ɮ� %s�A�q %s �� %s"
	Push "/TRANSLATE"
  !endif

  ZipDLL::extractfile

!macroend

!macro MUI_ZIPDLL_EXTRACTALL SOURCE DESTINATION

  Push "${DESTINATION}"
  Push "${SOURCE}"

  ;The strings that will be translated are:

  ;"  Error: %s"
  ;"Could not get file attributes."
  ;"Error: Could not get file attributes."
  ;"Could not extract %s"
  ;"  Error: Could not extract %s"
  ;"  Extract : %s"
  ;"  Extracting %d files and directories"
  ;"Extracting contents of %s to %s"

  !ifdef "MUI_LANGUAGEFILE_FRENCH_USED"
    strcmp $LANGUAGE ${LANG_FRENCH} 0 +10
    Push "  Erreur : %s"
    Push "Impossible de r�cup�rer les informations sur le fichier."
    Push "Erreur : Impossible de r�cup�rer les informations sur le fichier."
    Push "Impossible de d�compresser %s."
    Push "  Erreur : Impossible de d�compresser %s."
    Push "  D�compression : %s"
    Push "  D�compression de %d fichiers et r�pertoires"
    Push "D�compression des donn�es de %s vers %s"
    Push "/TRANSLATE"
  !endif
  !ifdef "MUI_LANGUAGEFILE_GERMAN_USED"
    strcmp $LANGUAGE ${LANG_GERMAN} 0 +10
    Push "  Fehler: %s"
    Push "Dateiattribute konnten nicht ermittelt werden."
    Push "Fehler: Dateiattribute konnten nicht ermittelt werden."
    Push "%s konnte nicht dekomprimiert werden."
    Push "  Fehler: %s konnte nicht dekomprimiert werden."
    Push "  Dekomprimiere: %s"
    Push "  Dekomprimiere %d Dateien und Verzeichnisse"
    Push "Dekomprimiere Inhalt von %s nach %s"
    Push "/TRANSLATE"
  !endif
  !ifdef "MUI_LANGUAGEFILE_SPANISH_USED"
    strcmp $LANGUAGE ${LANG_SPANISH} 0 +10
    Push "Error: %s"
    Push "No se obtuvieron atributos del archivo"
    Push "Error: No se obtuvieron atributos del archivo"
    Push "No se pudo extraer %s"
    Push "  Error: No se pudo extraer %s"
    Push "  Extraer: %s"
    Push "  Extrayendo %d archivos y directorios"
    Push "Extraer archivos de %s a %s"
    Push "/TRANSLATE"
  !endif
  !ifdef "MUI_LANGUAGEFILE_PORTUGUESEBR_USED"
    strcmp $LANGUAGE ${LANG_PORTUGUESEBR} 0 +10
    Push "Erro: %s"
    Push "N�o se pode ler os atributos do arquivo"
    Push "Error: N�o se pode ler os atributos do arquivo"
    Push "N�o se pode extrair %s"
    Push "  Erro: N�o se pode extrair %s"
    Push "  Extraindo: %s"
    Push "  Extraindo %d arquivos e diret�rios"
    Push "Extraindo arquivos de %s a %s"
    Push "/TRANSLATE"
  !endif
  !ifdef "MUI_LANGUAGEFILE_TRADCHINESE_USED"
    StrCmp $LANGUAGE ${LANG_TRADCHINESE} 0 +10
	Push "  ���~�G%s"
	Push "�L�k���o�ɮ��ݩʡC"
	Push "���~�G�L�k���o�ɮ��ݩʡC"
	Push "�L�k�����Y %s"
	Push "  ���~�G�L�k�����Y %s"
	Push "  �����Y�G%s"
	Push "  ���b�����Y %d �ɮשM��Ƨ�"
	Push "���b�����Y %s �����e�� %s"
	Push "/TRANSLATE"
  !endif

  ZipDLL::extractall

!macroend

!endif