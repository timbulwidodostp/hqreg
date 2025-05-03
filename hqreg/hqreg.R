# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Fit a robust regression model with Huber or quantile loss penalized by lasso or elasti-net Use hqreg With (In) R Software
install.packages("hqreg")
library("hqreg")
hqreg = read.csv("https://raw.githubusercontent.com/timbulwidodostp/hqreg/main/hqreg/hqreg.csv",sep = ";")
# Estimation Fit a robust regression model with Huber or quantile loss penalized by lasso or elasti-net Use hqreg With (In) R Software
y <- hqreg$y
X <- cbind(hqreg$X1, hqreg$X2, hqreg$X3)
Huber_loss = hqreg(X, y)
coef(Huber_loss, 0.01)
Quantile_loss = hqreg(X, y, method = "quantile", tau = 0.2)
coef(Quantile_loss, 0.01)
Squared_loss = hqreg(X, y, method = "ls", preprocess = "rescale")
coef(Squared_loss, 0.01)
# Fit a robust regression model with Huber or quantile loss penalized by lasso or elasti-net Use hqreg With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished