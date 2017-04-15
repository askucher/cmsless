GitHub = require \github-api
marked = require \marked
p = require \prelude-ls
maybe = (def, val)-->
  val ? def



cmsless = (config)->
    github = new GitHub do
             username: config.github.username
             password: config.github.password
             auth: \basic
    load = (gists, callback)-->
            [head, ...tail] = gists
            return callback null, [] if not head?
            err, gist-content <-! github.get-gist(head.id).read
            return callback(err) if err?
            get-content = (fileconfig)->
                parts =
                    fileconfig |> p.split(">") |> p.map (-> it.trim!)
                ext = parts.0.match(/[^.]+$/i)
                transform = (content)->
                    | parts.1 is \html and ext is \md => marked content
                    | ext is \json => JSON.parse content
                    | _ => content
                content = gist-content.files[parts.0] 
                if content?
                    transform content
                else 
                    ""
            result = 
                head.files |> p.map get-content
            err, child <-! load(tail)
            return callback err if err?
            collected = [result] ++ child
            callback null, collected
    load: load config.gists
module.exports = cmsless