
# Simulate natural selection 

rm(list=ls())

thePhrase<-c("c","h","e","e","s","e")#"Cheese"
#thePhrase<-c("c","h","e")#"Cheese"
#thePhrase<-c("c","h","e","e","s","e","i","s","g","o","o","d")#"Cheese"
#splitPhrase=strsplit(thePhrase,'')

Nchar<-length(thePhrase)

nit<-integer(length=1000)
for (i in seq_len(1000)) {
    
    
    # generate a random sample
    b<-sample(letters,Nchar)
    # find which characters are correct
    ig<-which(thePhrase==b)
    
    #ig<-0
    n_iter<-1
    while (length(ig)<Nchar){
        # generate a random sample
        b<-sample(letters,Nchar)
        # keep the correct letters
        b[ig]=thePhrase[ig]
        # find which characters are correct
        ig<-which(thePhrase==b)
        #    b[ig]=thePhrase[ig]
#        print(b)
        n_iter<-n_iter+1
    }
    
    print(n_iter)
    nit[i]<-n_iter
}

median(nit)
hist(nit)