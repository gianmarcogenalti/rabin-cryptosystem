# rabin-cryptosystem
Rabin's cryptographic system implementation for text and images. Rabin's system is a public key cryptosystem with some interesting computational features (like a fast encryption) but the decryption's part suffers from the fact that the decrypted message is not unique (we have four different outputs). In images this issue can be easily overcome due to the particular numerical domain of pixels, but in text it requires a padding process. In the pdf file these procedures are highlighted and examined in a rigorous mathematical way.
Some examples from original to encrypted to decrypted images:
<p float="left">
  <img src="Images/dali3.jpeg" width="100" />
  <img src="Images/encrypted_shrink_dali3.jpg" width="100" /> 
  <img src="Images/decrypted_shrink_dali3.jpg" width="100" />
</p>
<p float="left">
  <img src="Images/sgtpepper.jpg" width="100" />
  <img src="Images/encrypted_sgtpepper.jpg" width="100" /> 
  <img src="Images/decrypted_sgtpepper.jpg" width="100" />
</p>
The full report is available at: http://bit.ly/rabinreport
