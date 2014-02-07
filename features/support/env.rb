require 'log4r'
include Log4r

def logger name
  logger = Log4r::Logger[name]
  unless logger
    logger = Log4r::Logger.new(name)
    console = Outputter[:console]
    unless console
      console = Log4r::StderrOutputter.new(:console)
      console.level=WARN
    end
    nameLog = "#{logger.name}.log"
    log = Outputter[nameLog]
    unless log
      log=FileOutputter.new(:default, :filename => nameLog)
    end
    logger.add(console, log)
  end
  logger
end


