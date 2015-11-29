type Name = String

type Affinity = Int

data Actor = Actor { name :: Name }

data DiscreteAffinity = Like
                      | Hate

data Message = TellAffinity Name DiscreteAffinity
             | AskAffinity Name

main :: IO ()
main = print "done."
