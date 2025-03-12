gunzip -c `ls sms-*.zip save/sms-*.zip | grep 2018-02-` | grep ": send for id"  | wc -l
