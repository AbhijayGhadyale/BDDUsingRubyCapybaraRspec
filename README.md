bundle install

bundle exec cucumber --format html --out html-report/testReport.html

bundle exec cucumber --format json --out json-report/testReport.json