# JWT
JWT (JSON Web Token), is a compact, URL-sage means of representing claims to be transferred between two parties. The claims in a JWT are encoded as a JSON object that is used as the payload of a JSON Web Signature (JWS) structure or as the plaintext of a JSON Web Encryption (JWE) structure, enabling the claims to be digitally signed or integrity protected with a MEssage Authentication Code (MAC) and/or encrypted.

A JWT consists of three parts, separated by dots (.):
1. **Header**: Contains metadata about the token, such as the type of token (JWT) and the signing algorithm used (e.g., HMAC SHA256 or RSA).
2. **Payload**: Contains the claims. Claims are statements about an entity (typically, the user) and additional data. There are three types of claims:
    * **Registered claims**: Predefined claims that are not mandatory but recommended, such as `iis` (issuer), `exp` (expiration time), `sub` (subject), and `aud` (audience).
    * **Public claims**: Custom claims that can be defined by the user.
    * **Private claims**: Custom claims created to share information between parties that agree on using them.
3. **Signature**: Used to verify that the sender of the JWT is who it says it is and to ensure that the message wasn't changed along the way. The signature is created by taking the encoded header, the encoded payload, a secret, and the algorithm specified in the header, and signing them.

Example of a JWT:
```
to do...
```
* **Header**:
* **Payload**:
* **Signature**: