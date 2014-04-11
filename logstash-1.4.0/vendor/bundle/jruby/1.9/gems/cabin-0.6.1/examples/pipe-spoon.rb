require "cabin"
require "spoon"


logger = Cabin::Channel.get
logger.subscribe(STDOUT)
logger.level = :info

fileactions = Spoon::FileActions.new
fileactions.close(0)
cor, cow = IO.pipe # child stdout 
cer, cew = IO.pipe # child stderr
fileactions.dup2(cow.fileno, 1)
fileactions.dup2(cew.fileno, 2)

spawn_attr = Spoon::SpawnAttributes.new
pid = Spoon.posix_spawn("/bin/sh", fileactions, spawn_attr, ["sh", "-c"] + ARGV)
puts pid
cow.close
cew.close

logger.pipe(cor => :info, cer => :error)
pid, status = Process.waitpid2(pid)

puts status.inspect
