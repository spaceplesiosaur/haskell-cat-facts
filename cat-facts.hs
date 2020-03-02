module Main where
import System.IO
--IO allows Haskell, which prefers to be pure, do the input and output thing

getQuestion :: Int -> (String, String)
--Here, I am definining an interaction.  I'm telling the program that for each specific number, I am supposed to output a Tuple, which is in this case is comprised of two strings.

--In this case, I am using it to make 5 predefined question and answer sets

getQuestion 1 = ("How old is Spike?", "Twelve")
getQuestion 2 = ("What breed of cat is Spike?", "Ragdoll")
getQuestion 3 = ("What color are Spike's eyes?", "Blue")
getQuestion 4 = ("What is Spike's favorite food?", "Yogurt")
getQuestion 5 = ("What is Spikes's favorite toy?", "Cat tree")


--Below, we have our main function. This is what runs when we tell the program to run, so any other functions that are defined will probably be called in it, one way or another.

--We've told the program that our main is going to be taking inputs and outputs, and here, we're saying that our main function is a sequence of actions that a program will do, like in an imperative language.  'Do' chains these actions together.

--This is very basic and a little wrong - apparently to fully understand this, you need to know about something called 'monads'.  According to the internet, these are "represented as a type constructor (call it m ), a function that builds values of that type ( a -> m a ), and a function that combines values of that type with computations that produce values of that type to produce a new computation for values of that type ( m a -> (a -> m b) -> m b )"

main :: IO ()
main =  do
        rollQuestion 1
        rollQuestion 2
        rollQuestion 3
        rollQuestion 4
        rollQuestion 5


--Below, we're defining the questions' answer function - we're saying that it takes in an integer as an argument, and then spits out an input output based action

rollQuestion :: Int -> IO ()
--as stated, rollQuestions has been defined to be functions that take in integers and spit out input/output actions. n is what stands for the integer - since haskell is for math nerds, they like using single letters for variables.
rollQuestion n = do
                  putStrLn (fst (getQuestion n))
                  --I originally used "print" here, but that printed the question in quotes.  "fst" is calling the first item in the Tuple - getQuestions are all Tuples.
                  a <- getLine
                  --getLine is a haskell function that takes an input.  We are assigning it to the letter a for answer
                  putStrLn $ if a == snd (getQuestion n) then "YES" else "WRONG"
                  --if a, which is the input, equals the SECOND item in the Tuple, we print "Yes".  If not, we print "WRONG".



--Below is my original very inefficient function before refactoring it to take variables

{- main :: IO ()
main =  do
       putStrLn (fst (getQuestion 1))
       getFeedback 1
       putStrLn (fst (getQuestion 2))
       getFeedback 2
       putStrLn (fst (getQuestion 3))
       getFeedback 3
       putStrLn (fst (getQuestion 4))
       getFeedback 4
       putStrLn (fst (getQuestion 5))
       getFeedback 5

getFeedback1 :: IO ()
getFeedback1 = do
 a <- getLine
 putStrLn $ if a == snd (getQuestion 1) then "YES" else "WRONG"

getFeedback2 :: IO ()
getFeedback2 = do
  a <- getLine
  putStrLn $ if a == snd (getQuestion 2) then "YES" else "WRONG"

getFeedback3 :: IO ()
getFeedback3 = do
  a <- getLine
  putStrLn $ if a == snd (getQuestion 3) then "YES" else "WRONG"

getFeedback4 :: IO ()
getFeedback4 = do
  a <- getLine
  putStrLn $ if a == snd (getQuestion 4) then "YES" else "WRONG"

getFeedback5 :: IO ()
getFeedback5 = do
  a <- getLine
  putStrLn $ if a == snd (getQuestion 5) then "YES" else "WRONG" -}
