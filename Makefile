VERSION = ATOMIC

JAVAC = javac
JAR = jar

CP = cp
MKDIR = mkdir
RM = rm
TAR = tar

FONTS = MERIFONT.TTF LEIPFONT.TTF KINGFONT.TTF
SOURCE = BoardPanel.java \
         AtomicGUI.java \
         BoardPosition.java \
         CJMenuItem.java \
         MonteCarlo.java \
         CommIO.java \
         Communicator.java \
         CommunicatorOptionsFrameICI.java \
         CommunicatorOptionsFrameUCI.java \
         CommunicatorInstance.java \
         ComradesFrame.java \
         DemandPGN.java \
         RobboInformatoryFrame.java \
         ComradesOptioner.java \
         InstanceOptionsFrame.java \
         InstanceOptionsFrameUCI.java \
         InstanceOptionsFrameICI.java \
         InstancePanel.java \
         KillProcess.java \
         TypeMove.java \
         DataPGN.java \
         MovePane.java \
         ComradesNode.java \
         ComradesLabel.java \
         MoveTree.java

INNER = \
AtomicGUI\$$1.class \
AtomicGUI\$$2.class \
CommunicatorInstance\$$1.class \
CommunicatorInstance\$$EmptyPanel.class \
CommunicatorOptionsFrameICI\$$FileButton.class \
CommunicatorOptionsFrameICI\$$MultiButton.class \
ComradesFrame\$$1.class \
ComradesFrame\$$2.class \
ComradesFrame\$$3.class \
ComradesFrame\$$4.class \
ComradesFrame\$$EmptyPanel.class \
ComradesFrame\$$PlayGameThread.class \
ComradesLabel\$$1.class \
ComradesLabel\$$2.class \
ComradesOptioner\$$1.class \
ComradesOptioner\$$2.class \
ComradesOptioner\$$3.class \
InstanceOptionsFrameICI\$$1.class \
InstanceOptionsFrameICI\$$FileButton.class \
InstanceOptionsFrameICI\$$MultiButton.class \
InstanceOptionsFrameUCI\$$1.class \
MonteCarlo\$$1.class \
MonteCarlo\$$RenderDouble.class \
MonteCarlo\$$RenderFloat.class \
MonteCarlo\$$TableModel\$$1\$$1.class \
MonteCarlo\$$TableModel\$$1.class \
MonteCarlo\$$TableModel.class \
RobboInformatoryFrame\$$TableModel.class


CLASSES = $(SOURCE:.java=.class)
WORKING_DIR = ComradesGUI-$(VERSION)

ALL = $(FONTS) $(INNER) $(SOURCE) Makefile MANIFEST READ_ME

all: AtomicGUI.jar
AtomicGUI.jar: $(CLASSES) Makefile
	$(JAR) cfm AtomicGUI.jar MANIFEST $(CLASSES) $(INNER)
%.class: %.java Makefile
	$(JAVAC) $<
archive:
	$(RM) -rf $(WORKING_DIR) *.tar # ensure
	$(MKDIR) $(WORKING_DIR)
	$(CP) $(ALL) $(WORKING_DIR) # inner classes ?
	$(TAR) cf $(WORKING_DIR).tar $(WORKING_DIR)/*
	$(RM) -rf $(WORKING_DIR)
clean:
	$(RM) -f $(CLASSES) $(INNER) *.class
