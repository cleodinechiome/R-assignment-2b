#question 2b.
M=10
N=10
set.seed(Sys.time())
matrix = matrix( rnorm(N), N, M)
df = data.frame(matrix)
df1 = sin(df) + df #vectorized



for (i in 1:N){
  for (j in 1:M){
    df[i,j] =df[i,j] + sin(df[i,j])
  }
}
df

df-df1

