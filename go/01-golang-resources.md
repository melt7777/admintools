# Golang Resources

Notes, coursework and meeting notes from various trainings and classes.


## Contents
1. Golang Resources
2. Synopsis
3. Getting Started
4. Community
5. IDE
6. Code Conventions
7. Topics I would be interested in learning
8. Topics I have completed recently
9. Good Libraries
10. My course notes

## 1 Golang Resources

Quickstart video: https://www.youtube.com/watch?v=XCsL89YtqCs

Tutorial: http://www.newthinktank.com/2015/02/go-programming-tutorial/

Docs: https://golang.org/doc/

## 2 Synopsis of CLI Compiler use

If you are Creating a program: Use package main If you are Creating an importable package, name it with a capital letter to make it exportable and public to other packages

```
mkdir gocode
export GOLANG=$HOME/gocode
cd goocode
mkdir -p src/github.com/namespace
cd ^
mkdir hello # make a project location
nano hello.go # write the code
go install  # compile it

export $PATH=$HOME/gocode/bin:$PATH
./hello
```

`go build # compile a package and throw the output out`

`go install # make a package (a .a file)`

You can call it now from another package after importing it

## 3 Getting Started

Here are some resources you should check out if you are learning / new to Go: 

### Tour

First you should take the language tour: 

- https://tour.golang.org/

### Documentation

- GoDoc: https://godoc.org/

- Code Review: https://github.com/golang/go/wiki/CodeReviewComments

- https://golang.org/doc/code.html to learn how to organize your Go workspace

- https://github.com/alco/gostart A getting started guide for Go newcomers - gopd package stuff

- https://golang.org/doc/effective_go.html be more effective at writing Go

- https://golang.org/ref/spec learn more about the language itself

- https://golang.org/doc/#articles a lot more reading material

### Other sites

- https://blog.gopheracademy.com great resources for Gophers in general

- http://gotime.fm awesome weekly podcast of Go awesomeness

- https://gobyexample.com examples of how to do things in Go

- http://go-database-sql.org how to use SQL databases in Go

- https://dmitri.shuralyov.com/idiomatic-go tips on how to write more idiomatic Go code

- https://divan.github.io/posts/avoid_gotchas will help you avoid gotchas in Go

- https://golangbot.com tutorials to help you get started in Go

### Videos

There's also an exhaustive list of videos related to Go from various authors.

- http://gophervids.appspot.com 

### Books

- http://www.golangbootcamp.com/book

- http://gopl.io/

- https://www.manning.com/books/go-in-action (if you e-mail @wkennedy at bill@ardanlabs.com you can get a free copy for being part of this Slack)

If you want to learn how to organize your Go project, make sure to read: https://medium.com/@benbjohnson/standard-package-layout-7cdbc8391fc1#.ds38va3pp. Once you are accustomed to the language and syntax, you can read this series of articles for a walkthrough the various standard library packages: https://medium.com/go-walkthrough.

### Even More Resources

Finally, https://github.com/golang/go/wiki#learning-more-about-go will give a list of even more resources to learn Go

## 4 Community

Our Meetup site: https://www.meetup.com/Downingtown-Education-Technology-Meetup/

Gophers Slack

Thousands of Gophers in this community. Many localized or content-specific subchannels to talk in. You can also get help with coding at nearly any time.

Invite: https://invite.slack.golangbridge.org/

Our own channel: #downingtown-gophers is our channel on the Slack.

Developer Discords

There is a #go channel on many developer discords. I am a member of "The Coding Den" which is pretty strict.

The Coding Den Discord info: https://www.reddit.com/r/learnprogramming/comments/4lvtkn/discord_server_the_coding_den_fast_and_easy_way/

## 5 Dev Software

### Visual Studio Code

Works on almost all platforms and OS. Has many plugins for added mods and functions. 

1. Install golang and git using your OS instructions

Linux: `sudo apt-get update; sudo apt-get install golang-go git`

2. Download and install VSCode using your OS Instructions: https://visualstudio.microsoft.com/downloads/

VS Code Documentation: https://code.visualstudio.com/docs?start=true

3. Install Plugins:

Go Plugin: https://marketplace.visualstudio.com/items?itemName=ms-vscode.Go
The go fmt plugin: will allow you to auto format, update imports, bulk comment out, etc.

SSH FS Plugin: https://marketplace.visualstudio.com/items?itemName=Kelvin.vscode-sshfs
Allows you to use SSH/SCP targets as active development folders.

Gitlens Plugin: https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens
Seamlessly navigate and explore Git repositories, gain valuable insights via powerful comparison commands, and so much more.

4. Setup Golang enhancements

This allows auto formatting, lookup, and other enhancements:
You can use the Ctrl-Shift-P: then do Generate Interface stubs, and it will automatically add [json] tags to a struct, for example.

Hit Ctrl-Shift-P: Go Install/update tools
Restart VSCode.
If you see a notice in the bottom right stating "Analysis tools needed" click it and install the golang tools to the IDE. 

5. Defining your own build tasks:
You can automate build tasks using a special file .vscode/tasks.json
Then you can use Control-shift-B to build and Control-shift-T to test.

### Other

#### Sublime Text 
- Quick and easy, has themes and plugins of its own

#### MobaXterm
 - Good for quick SSH / SCP editing using Sublime

#### glide

Workspace/Dep management util.  https://glide.sh 

Helps manage project workspaces and deps. 

First time in a project workspace dir: 
`glide init`

Whenever you update code, update the deps:
`glide update`

## 6 Code Conventions

You can run:

`go fmt myfile.go`

And it will reformat your code and tidy it up, especially the comments, and spacing, according to go Conventions! Awesome!!!! This can be done automatically using the VS Code Go Tools (details above)

Further important stuff was in the Effective Go handbook including:

- Variable naming: use camelcase and not underscores, use simple variable names inside loops

- Go Doc commenting: How to put the comments for your functions so you can extract them into go documentation format.


## 7 Topics I am learning / working on

- Storing application globals for concurrent reading ability.

- Running services

- breaking an application down into reusable packages / classes

- building devops tools


## 8 Topics I have completed recently

- Using structs and methods to create instances

- gathering hardware data using system commands

- exporting structs to JSON

- pushing data to a web server's REST API to populate a web application made of Bootstrap4/JS.

- intro to testing in Go and how to build the test modules.

## 9 Good Libraries

Just stuff / notes I log as i find it in training videos.

Cobra: github.com/spf13/cobra
- subcommands
- flags

Viper github.com/spf13/viper
- set/get config settings
- integrates with cobra

https://github.com/mspaulding06/nap  Golang REST API library 
- same author makes pork and wreck, other API / github tools (examples)

## 10 My Course Notes

### Concurrency 

gobyexample.com/goroutines
gobyexample.com/channels

A singleton is a function that returns an instance of an object, and every time the method is called ,the same object is returned. like, the github api.

select statement can be a blocking switch.

```go
// call long running function in a goroutine and write the result into a channel:
resultChan := make(chan int)
go func() {
    resultChan <- Bigupdate()
} ()
// then proceed with timer and select
timer := time.NewTimer(1 * time.Second)
select { 
    case value := <-resultChan:
        // yay!
    case <-timer.C:
        return errors.New("timeout")
}
```

What can the sync package provide?

- mutex as a member of a struct, you lock and unlock it
- waitgroup keeps a tally of routines running. when its counter gets to 0 it's done. 
- once struct s.Once.Do(func() {})

### Testing 

Unit Testing

github.com/stretchr/testify/assert.
good testing toolkit. simplifies writing testing code.

Measuring Test Coverage

generate a code coverage report:
go test -coverprofile=cover.out
go tool cover -html=cover.out

Mocks

use mockgen to generate code.
- create a new mock interface that implements the original.

CPU/Memory Profiling

pprof package
- add the code in your program to create the profiles.
- use the interactive profiling tool to load it in and inspect it: `go tool pprof cpu.prof`
- in pprof, `(pprof) top` or `top -runtime` 
- in pprof, create graphic: `png -runtime` 

runtime package

Debugging

delve package - CLI and IDE support - VSCode

- use the interactive debugger to type commands and inspect vars:
- commands break, breakpoints, (c)ontinue, locals, vars, l, next, step, stack, stepout, set
- red dot next to a line number, debug menu

### What to do in a CI/CD Pipeline: 

Compile (`go build`)

Unit Testing (`go test`)
Formatting:

Formatting: `test $(gofmt -l . | wl -c) -eq 0` 

You can also do in-line replacement to current dir's code: `gofmt -w -l .`

Find common errors with go vet: `go vet .`

Find style errors with golint:

Install: `go get -u golang.org/x/lint/golint`

Run: `golint` will give you variable-naming suggestions and more.

Cyclomatic Complexity: github.com/fzipp/gocyclo

How hard is your code to understand?
1= base complexity of function
+1 for each if, for, case, &&, or ||

We could stop a build in our CI pipeline for being too complex.

Find Unchecked Errors with errcheck -blank

Find security issues with gosec

### Go Modules

The intended new way for handling package deps across projects.

- go 1.11 experimental support
- supports specific versions/ranges for deps
- no more $GOPATH

`go mod init <packagename>` in the package dir, but dont do it within the $GOPATH!

it will create a go.mod (list of deps / their versions) and go.sum (checksums of them) (Check these into VCS.)

Remove unused deps: `go mod tidy`

If you want old-school vendor/ dir: `go mod vendor`

### Cross Compiling 

Set target OS with $GOOS: `GOOS=windows go build`

`GOOS=windows GOARCH=amd64 go build -o test.exe`

Choices: darwin, dragonfly, freebsd, linux, netbsd, openbsd, plan9, solaris, windows

Set target cpu arch with $GOARCH: amd64, 386, arm64, arm, ...
- more precise options available, e.g. GOARCH=arm GOARM=7 see docs

File Build Constraints : Use filename suffixes. hello_windows.go, hello_darwin.go, hello.go (other platforms)

Put notation at beginning to omit from builds: `// +build !windows,!darwin` 

Container Images

### Building in Docker

- your app
- app runtime environment, e.g. php:7.3
- base image, e.g. debian:stretch

go binary doesn't need base or app runtime apps - we can go from scratch image, much smaller images.


```Dockerfile
FROM golang:1.11

COPY . /work
WORKDIR /work
// must statically link. no deps to system libs.
RUN go build -ldflags="-w -s" -o hello 

FROM scratch

COPY --from=builder /work/hello /usr/bin/hello
COPY ---from=builder /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
COPY --from=builder /etc/passwd /etc/

USER app

ENTRYPOINT ["/usr/bin/hello"]

```

Then: `docker build -t hello .` from the above Dockerfile

`docker run --rm hello`

`docker image ls | grep ^hello` // 1.59MB

Automate Releases using GoReleaser


### Typical Release Process:

1. `git tag v1.2.3; git push --tags`

2. Compile once for each os/arch

3. Package (tarball, package, docker image)

4. Publish artifacts to: github, S3, Bintray, artifactory, Docker registry

Install on linux with snap: `snap install goreleaser` // goreleaser.com/install

#### Reference and De-reference:

```go
// `&` takes a reference of a value (think "pointer"), `*` dereferences the reference to the value:
func main() {
    var s = "this is a string"
    p := &s // this is a reference to the string
    d := *p // this is a string that was dereferenced from p
    fmt.Printf("s=%q p=%v d=%q\n", s, p, d)
}
```

### Interface 
- collection of methods/return types:
- A type definition (struct) - ex: MyType
- A function NewMyType(args...) which builds the struct instance from argument values and are called from "packagename dot function."
- Methods, which have a signature func (t \*MyType) (args) return{} and are called from "instance dot method".

### Building web applications in Go:

Package gorilla/mux https://github.com/gorilla/mux 
- implements a request router and dispatcher for matching incoming requests to their respective handler. 
- You set up a reader with the client data (r) and a writer (w)
- handle the URLs with handler functions.
- http/template allows you to create and serve html templates with go vars in them. 

### Discussion of Go Modules in the gophers slack

These are new in Go 1.11, but some folks have some problems with them: 

- Every time you add a new direct dependency, you need to manually update all of your dependencies.
- Since you don’t know whether that new direct pulled in an outdated dep with a fixed security vulnerability.
- Modules doesn’t have a concept of latest supported version, so it uses the oldest supported version. Bugs, security issues, and all.

So what this means, is that every Module maintainer in the Go ecosystem now needs to be religious about continually / regularly updating their `go.mod` file to avoid potentially harming a user who pulls in their package and gets a transitive dependency with an issue in it.
In other languages you rely on the SemVer supported range to largely keep you fresh, where you only need to watch out for major version bumps.
With Modules you’ll need to keep tabs on Majors, Minors, and Patches. requiring manual interaction from users is the path to systemic failure. How many adopters of modules are being this religious today?

### Error Handling

- An error in Go is any type implementing the error interface with an Error() string method.

- Functions return errors just like any other value. Multiple return values distinguish errors from normal return values.

- Errors are handled by checking the value(s) returned from a function and propagated to higher layers of abstraction through simple returns (perhaps adding details to the error message).

Error handling related articles: 
https://medium.com/@hussachai/error-handling-in-go-a-quick-opinionated-guide-9199dd7c7f76
https://blog.golang.org/error-handling-and-go
https://8thlight.com/blog/kyle-krull/2018/08/13/exploring-error-handling-patterns-in-go.html
https://medium.com/@sebdah/go-best-practices-error-handling-2d15e1f0c5ee
https://dave.cheney.net/2016/04/27/dont-just-check-errors-handle-them-gracefully

