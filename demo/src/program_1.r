# set program logger
root.logger.name <- "root";

logger.1 <- sprintf("%s.a", root.logger.name);

loginfo("Starting program 1...", logger=logger.1);
logwarn("This is a warning.", logger=logger.1);
logerror("This is an error.", logger=logger.1);