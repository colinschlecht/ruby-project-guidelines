`# Marvelous 

Marvelous is a Ruby app that searches through a marvel api based on keywords.

## Description 

Marvelous is a simple command line application that provides a user with the ability to search for specific details about their favorite Marvel movies and characters. Marvelous implements a simple user interface to loop through decisions on how to search, before taking a singular search term to locate specific details stored in the Marvelous database. The user is able to specify whether they are looking for an actor, character or movie, before specifying their preferred search term. The search term will always be one of three options, a character’s ‘Super Name,’ ‘Incognito Name,’ or ‘Actor Name.’

## Install Instructions

1. Fork and clone this repository 
2. Run bundle install 
4. Rake db:mirgate 
3. Rake db:seed
5. Call the CommandLine class in bin/run.rb 

## Contributor

* Raising an issue or suggesting an improvement 

If you notice a problem with the app that you believe needs improvement. Feel free to make changes or leave comments. Use a git workflow to make it happen:

    1. Fork this repository 
    2. Make the changes on your fork, with a descriptive commits
    3. Open a Pull request against this repo 

## License 

MIT License

Copyright (c) [2021] [Marvelous]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.