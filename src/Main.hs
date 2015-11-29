import qualified Data.Map as Map

type Name = String

type Affinity = Int

type AffinityMap = Map.Map Name Affinity

data Actor = Actor { name :: Name,
                     affinities :: AffinityMap }

newActor :: Name -> Actor
newActor name = Actor { name = name,
                        affinities = Map.empty }

introduce :: (Actor, Actor) -> (Actor, Actor)
introduce (a, b) = (a { affinities = insert b a},
                    b { affinities = insert a b })
    where insert a b = Map.insert (name a) 0 (affinities b)

data DiscreteAffinity = Like
                      | Hate

data Message = TellAffinity Name DiscreteAffinity
             | AskAffinity Name

main :: IO ()
main = print "done."
