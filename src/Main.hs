type Name = String

type Affinity = Int

data AffinityMap = Map Name Affinity

data Actor = Actor { name :: Name,
                     affinities :: AffinityMap }

data DiscreteAffinity = Like
                      | Hate

data Message = TellAffinity Name DiscreteAffinity
             | AskAffinity Name

main :: IO ()
main = print "done."
