# MultiLogger
MultiLogger is a Data Structure, that holds references to multiple-
loggers to be used as one.

## Getting Started
### Installation
Execute the following commands in the cloned directory:
```
rake build
rake install
```

## Usage
### Initialization options
Multilogger can be used with any logger that implements [ruby simple logger](https://github.com/ruby/logger) spec.
It can simply be initialized with any number of Loggers.

### Example
Merging 3 different loggers
```
require 'logger'
require 'multi_logger'

logger1 = Logger.new('./Log1.log')
logger2 = Logger.new('./Log2.log')
logger3 = Logger.new('./Log3.log')

# loggers can be added during initialize
multi_logger = MultiLogger.new(logger1, logger2)
multi_logger.info('Initializing')

# Loggers can be modified
multi_logger.add_logger(logger3)
multi_logger.info('logger3 is now logging')

multi_logger.remove_logger('logger2')
multi_logger.warn('logger2 has stopped logging')
```
### Advanced
Multilogger can be used with more advance ruby loggers too, for example [MonoLogger](https://github.com/steveklabnik/mono_logger).

## Author
Basil Salman