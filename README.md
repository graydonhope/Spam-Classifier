# Spam Classifier using Support Vector Machines

## Using an SVM with Gaussian Kernels to do non-linear classification 

### Gaussian Kernel Function:
Finding non-linear decision boundaries

![image](https://user-images.githubusercontent.com/41659296/56093391-29bf0280-5e96-11e9-8f64-ac2b64e4a346.png)

### In effect:
![image](https://user-images.githubusercontent.com/41659296/56093403-4bb88500-5e96-11e9-9a88-d7ea16b668a7.png)


## Training an SVM for Spam Classification
After the emails are pre-processed, the program extracts features from the email and converts them into a vector in R^n

![image](https://user-images.githubusercontent.com/41659296/56093443-ec0ea980-5e96-11e9-93bc-69ae53f69660.png)

After training on a dataset from the SpamAssasin Public Corpus, the classifier detects 
### 98.5% 
of spam emails correctly.

Course base on Stanford's Machine Learning Course.
