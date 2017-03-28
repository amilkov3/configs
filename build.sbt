
name := "sandbox"

version := "0.0.1.0"

scalaVersion := "2.12.1"

resolvers ++= Seq(
  Resolver.sonatypeRepo("releases"),
  Resolver.sonatypeRepo("snapshots")
)

libraryDependencies ++= Seq(
  "org.mongodb" %% "casbah" % "3.1.1",
  "com.chuusai" %% "shapeless" % "2.3.2"
)
