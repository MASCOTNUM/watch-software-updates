library("pkgsearch")

df = read.table("r_packages.csv")

for (i in 1:nrow(df))
{
  p = df[i, "package"]
  t = cran_package(p)
  v0 = df[i, "version"]
  v1 = t$Version
  if (v0 != v1)
    cat(p, ": ", v0, " -> ", v1, sep = "")
}
