echo '**** Generating OMG Spec from Model ****'
cd /Applications/Cameo\ Enterprise\ Architecture/plugins/com.nomagic.magicdraw.reportwizard
echo 'chaning directory to:'
pwd
sh generate.sh -project /Users/dks02/git/AML/specification.mdzip -output /Users/dks02/git/AML/report/OMGSubmissionTemplateOutput.docx -template /Users/dks02/git/AML/report/OMGSubmissionTemplate.docx -package "specification" -overwrite true -recursive true -report "AMLReport"

