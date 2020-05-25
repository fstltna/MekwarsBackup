#!/usr/bin/perl

# Set these for your situation
my $MEGAMEKDIR = "/root/MWServer";
my $BACKUPDIR = "/root/backups";
my $TARCMD = "/bin/tar czf";
my $VERSION = "1.0";

#-------------------
# No changes below here...
#-------------------

print "MekwarsBackup - back up your MekWars server - version $VERSION\n";
print "======================================================\n";

if (! -d $BACKUPDIR)
{
	print "Backup dir $BACKUPDIR not found, creating...\n";
	system("mkdir -p $BACKUPDIR");
}
print "Moving existing backups: ";

if (-f "$BACKUPDIR/mekwarsbackup-5.tgz")
{
	unlink("$BACKUPDIR/mekwarsbackup-5.tgz")  or warn "Could not unlink $BACKUPDIR/mekwarsbackup-5.tgz: $!";
}
if (-f "$BACKUPDIR/mekwarsbackup-4.tgz")
{
	rename("$BACKUPDIR/mekwarsbackup-4.tgz", "$BACKUPDIR/mekwarsbackup-5.tgz");
}
if (-f "$BACKUPDIR/mekwarsbackup-3.tgz")
{
	rename("$BACKUPDIR/mekwarsbackup-3.tgz", "$BACKUPDIR/mekwarsbackup-4.tgz");
}
if (-f "$BACKUPDIR/mekwarsbackup-2.tgz")
{
	rename("$BACKUPDIR/mekwarsbackup-2.tgz", "$BACKUPDIR/mekwarsbackup-3.tgz");
}
if (-f "$BACKUPDIR/mekwarsbackup-1.tgz")
{
	rename("$BACKUPDIR/mekwarsbackup-1.tgz", "$BACKUPDIR/mekwarsbackup-2.tgz");
}
print "Done\nCreating Backup: ";
system("$TARCMD $BACKUPDIR/mekwarsbackup-1.tgz $MEGAMEKDIR/*");
print("Done!\n");
exit 0;
