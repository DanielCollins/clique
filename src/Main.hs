import qualified Data.Map as Map

type Name = String

type Affinity = Int

type AffinityMap = Map.Map Name Affinity

data Actor = Actor { name :: Name,
                     affinities :: AffinityMap }

newActor :: Name -> Actor
newActor name = Actor { name = name,
                        affinities = Map.empty }

data DiscreteAffinity = Like
                      | Hate

data Message = TellAffinity Name DiscreteAffinity
             | AskAffinity Name

main :: IO ()
main = print "done."
