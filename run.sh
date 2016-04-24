
#while inotifywait -e close_write myFile.txt; 
#do
./geodesic
./project_algo
python createXML.py
rm myFile.txt nodes_for_xml.txt nodes_start_end.txt
cp Landmarks.xml /var/www/html/.
cp markers.html /var/www/html/.

rm Landmarks.xml
rm markers.html

sudo chmod 777 /var/www/html/markers.html
sudo chmod 777 /var/www/html/Landmarks.xml

chromium-browser http://localhost/markers.html

#done;