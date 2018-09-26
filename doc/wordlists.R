# create the list of words affiliated with family and friends from the web

# copy pasted from this website:
# https://www.enchantedlearning.com/wordlist/


packages <- c("Hmisc")

# Install and load packages only if needed
package.check <- lapply(packages, FUN = function(x) {
  if (!require(x, character.only = T)) install.packages(x)
  if (! (x %in% (.packages() )))  library(x, character.only = T)
})



# https://www.enchantedlearning.com/wordlist/people.shtml
friends <- "A
acquaintance
admirer
adolescent
adult
adversary
ally
amigo
ancestor
angel
antagonist
anybody
anyone
apparition
associate
B
baby
backer
beau
benefactor
best friend
boy
boyfriend
bride
bridegroom
brother
bud
buddy
C
champion
character
cherub
child
children
chum
citizen
clan
classmate
cohort
collaborator
colleague
combatant
compadre
companion
comrade
confederate
confidant
contact
C cont.
coworker
crew
crony
customer
D
descendant
doppelg??nger
dude
E
employee
enemy
everybody
everyone
F
family
fellow
fianc??
fianc??e
flatmate
foe
folks
freshman
friend
G
gent
gentleman
girl
girlfriend
groom
grown-up
guy
H
house-mate
human
human being
I
individual
infant
inhabitant
in-law
J
junior
K
kid
kin
kith
L
lad
laddie
lady
lass
lassie
lover
M
man
mate
men
minor
mortal
N
neighbor
newborn
nobody
no one
O
occupant
opponent
P
pal
partner
patron
people
person
populace
population
preteen
R
rank and file
relations
relative
resident
retiree
rival
roommate
S
schoolboy
schoolgirl
schoolmate
senior
sidekick
sister
socialite
somebody
someone
sophomore
soul
sponsor
spouse
steady
stranger
supporter
sweetheart
T
teammate
teen
teenager
toddler
tot
tribe
tween
tyke
U
urchin
W
well-wisher
woman
women
workmate
Y
youngster
youth"

# https://www.enchantedlearning.com/wordlist/family.shtml

family <- "A
          adoption
           adoptive father
           adoptive mother
           ancestor
           aunt
           B
           bachelor
           birth mother
           blood relative
           bride
           bridegroom
           brother
           brotherhood
           brotherly
           brother-in-law
           C
           care-giver
           child
           childhood
           children
           clan
           close-knit
           connection
           cousin
           D
           dad
           daddy
           daughter
           daughter-in-law
           descendant
           devoted
           divorce
           E
           eligible
           engaged
           engagement
           estranged
           ex
           ex husband
           ex wife
           extended family
           F
           faithful
           family
           family tree
           father
           father-in-law
           fiancee
           first born
           first cousin
           first cousin once removed
           flesh and blood
           folks
           foster
           foster child
           foster father
           foster mother
           foster parent
           fraternal
           friend
           F cont.
           foster child
           foster parent
           fraternal
           fraternal twin
           G
           genealogy
           grampa
           gramps
           grandchild
           grandchildren
           granddaughter
           grandfather
           grandma
           grandmother
           grandpa
           grandparent
           grandson
           granny
           great-granddaughter
           great-grandfather
           great-grandmother
           great-grandparent
           great-grandson
           great-aunt
           great-uncle
           groom
           grownup
           H
           half-brother
           half-sister
           heir
           heiress
           helpmate
           hereditary
           heritage
           history
           home
           household
           husband
           I
           identical twin
           inherit
           inheritance
           infant
           infancy
           in-law
           K
           juvenile
           K
           kin
           kindred
           kinfolk
           kinship
           kith
           L
           lineage
           love
           loyalty
           M
           ma
           maiden name
           mama
           marriage
           mate
           maternal
           matriarch
           matrimony
           minor
           Miss
           mom
           mommy
           monogamy
           mother
           mother-in-law
           Mr.
           Mrs.
           Ms.
           N
           nana
           natal
           nephew
           nest
           newlywed
           niece
           nuclear family
           nuptial
           nurture
           O
           offspring
           orphan
           P
           pa
           papa
           parent
           partner
           paternal
           patriarch
           pop
           posterity
           progenitor
           progeny
           Q
           quadruplets
           quads
           quints
           quintuplets
           R
           related
           relations
           relative
           S
           second cousin
           senior
           separation
           sibling
           single
           sister
           sisterhood
           sister-in-law
           sisterly
           son
           son-in-law
           spouse
           stepbrother
           stepchild
           stepchildren
           stepdad
           stepdaughter
           stepfather
           stepmom
           stepmother
           stepsister
           stepson
           support
           surrogate mother
           T
           tribe
           triplets
           trust
           trustworthy
           twin brother
           twin sister
           twins
           U
           uncle
           V
           value
           W
           wed
           wedding
           wedlock
           wife
           Y
           youngster
           youth"

# merging and processing
others <- paste(family, friends)
others <- string.break.line(others)
others <- gsub(" ", "", others[[1]], fixed = TRUE) # get rid of spaces
others <- others[str_length(others) != 1] # get rid of Letter titles
