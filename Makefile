ajax:
	grep -rl admin-ajax.php . | xargs sed -i '' -e 's/https:\/\/adm.ganhoaocubo.comhttps:\/\/adm.ganhoaocubo.com\/wp-admin\/admin-ajax.php/https:\/\/adm.ganhoaocubo.comhttps:\/\/adm.ganhoaocubo.comhttps:\/\/adm.ganhoaocubo.com\/wp-admin\/admin-ajax.php/g'
	grep -rl admin-ajax.php . | xargs sed -i '' -e 's/\\\/wp-admin\\\/admin-ajax.php/https:\\\/\\\/adm.ganhoaocubo.com\\\/wp-admin\\\/admin-ajax.php/g'


deploy:
	aws s3 sync --acl public-read . s3://ganhoaocubo.com/ --profile personal
