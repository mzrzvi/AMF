source("utils.R")
library(shiny)
library(ggplot2)
library(scales)
library(dplyr)
library(zoo)
library(Hmisc)
library(reshape2)

dk.id.data <- read.csv(file=DK.DATA,
                       colClasses=c(NULL,
                                    rep("numeric",4),
                                    "time",
                                    "numeric",
                                    rep("character",6),
                                    "numeric",
                                    "character",
                                    "numeric",
                                    "character",
                                    rep(NULL,41)
                                    ))




# 'welcome_screen',
# 'identification:GPS_HH:Latitude',
# 'identification:GPS_HH:Longitude',
# 'identification:GPS_HH:Altitude',
# 'identification:GPS_HH:Accuracy',
# 'identification:date_heure',
# 'identification:phone_id',
# 'identification:aire_de_sante_province',
# 'identification:aire_de_sante_district',
# 'identification:aire_de_sante_hz',
# 'identification:aire_de_sante',
# 'identification:nom_village',
# 'identification:LQAS_enum:enumerer_jour',
# 'identification:LQAS_enum:enumerer_HH',
# 'identification:nomdechef_HH',
# 'identification:telephone_HH',
# 'identification:mentions_legales',
# 'identification:signature_of_chef',
# 'legales_non:socio_demographique:age_repondant',
# 'legales_non:socio_demographique:sexe_repondant',
# 'legales_non:socio_demographique:total_personnes',
# 'legales_non:socio_demographique:nbr_femmes_enceinte',
# 'legales_non:socio_demographique:nbr_enfant_sous_5',
# 'legales_non:connaissance_perception:malaria_transmise',
# 'legales_non:connaissance_perception:malaria_transmise_autre',
# 'legales_non:connaissance_perception:malaria_signes',
# 'legales_non:connaissance_perception:malaria_signes_autre',
# 'legales_non:connaissance_perception:malaria_prevenir',
# 'legales_non:connaissance_perception:malaria_traitment_simple',
# 'legales_non:connaissance_perception:malaria_traitment_autre',
# 'legales_non:prevention:moins_une_MILD_HH',
# 'legales_non:prevention:moins_impregnee_HH',
# 'legales_non:prevention:nbr_MILD_impregnee',
# 'legales_non:prevention:obtenu_MILD_ou',
# 'legales_non:prevention:obtenu_MILD_ou_autre',
# 'legales_non:prevention:tout_personnes_dormi',
# 'legales_non:prevention:enceintes_dormi',
# 'legales_non:prevention:IPT_utilisez',
# 'legales_non:prevention:enfants_dormi',
# 'legales_non:prevention:prevention_dans_HH',
# 'legales_non:prevention:prevention_dans_HH_autre',
# 'legales_non:traitement:enfant_fievre',
# 'legales_non:traitement:enfant_beneficier',
# 'legales_non:traitement:enfant_medicament',
# 'legales_non:traitement:consulte_enfant',
# 'legales_non:distribution:place_dormir',
# 'legales_non:distribution:nbr_bonne_mild',
# 'legales_non:distribution:MILD_par_HH',
# 'legales_non:distribution:distrbution_summary',
# 'legales_non:distribution:MILD_installees',
# 'legales_non:distribution:MILD_marque',
# 'legales_non:distribution:MILD_retournees',
# 'legales_non:distribution:MILD_emballage',
# 'legales_non:distribution:photo_installee',
# 'start',
# 'end',
# 'deviceid',
# 'meta:instanceID', 
