library(logging);

# set root logger
basicConfig();

# set the name of root logger, and info level
root.logger <- getLogger('root', level=loglevels[['INFO']]);

# write to file
file.path <- sprintf("../log/%d.log", as.integer(Sys.time()));
addHandler(writeToFile, file=file.path, level=loglevels[['INFO']], logger=root.logger);

loginfo("Starting root logger...", logger=root.logger);
logwarn("This is a warning.", logger=root.logger);
logerror("This is an error.", logger=root.logger);