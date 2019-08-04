# set program logger
root.logger.name <- "root";

logger.2 <- sprintf("%s.b", root.logger.name);

loginfo("Starting program 2...", logger=logger.2);
logwarn("This is a warning.", logger=logger.2);
logerror("This is an error.", logger=logger.2);