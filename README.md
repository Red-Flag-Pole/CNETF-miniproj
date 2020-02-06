# CNETF Mini Project
Created for the CNETF module's mini project, Network Systems & Security, Ngee Ann Polytechnic  
 
  
  
## Ghost ship

We have found the HTTP server that the botnet is using. Find the secret 
that they are hiding. Decrypt and decode the secret and we can begin to bring down their whole operation.  
  
HTTP server:  
```http://127.0.0.1:13008```  
  
**NO NMAP, DNS OR bruteforce needed**  
   
*Docker is needed to run the container for the service*  
This project folder can be retrieved from GitHub.  
  
THe flag is in the format CNETF{____}    
When you get the flag the challenge is completed.  
  
### Hints  
1. Check out this cool text for robots  
2. For the second part, look at HTTP headers. The name of this puzzle is also a hint itself!  
  
### Deployment

Deploy service to challenge service server and run ./build.sh.  
Use ./test-server.sh to verify important links are up and viewable. (Note, this practically gives you the answer)  

## Solution
  
Nginx reveals own configuration under `/config/` (Done intentionally). THis is known by viewing the robots.txt file.  
  
nginx.conf shows a second virtual host / server. This is the one we will be interested in.   
  
Use `curl` or other methods like `Postman` or `Insomnia` to specifially modify the host header in
the HTTP requests. This will cause it to go to the virtual host.  
`e343t4o5y.malwa.re.local`    
  
If you examine the conf, you realise only '`/`' is black holed.  
View `/index.html` directly and you see that it links to `/bots.yaml`, which contains more links.  
  
Additionally, `/robots.txt` plays a part as well.  
  
`/bots.yaml` contains the decryption key used in the XOR later.  
`/api/v1/secret` reveals the encrypted and encoded secret.  
`/scripts/flag.py` is the Python3 script that can retrieve the secret from the server and decode it with a key specified in bots.yaml  
  

Should yield the below:

Flag is `CNETF{D0MA1N_FR0NT1NG}`   
Key is  `c1X5gAIm3ZLMIBgqfH5Rmq`  
