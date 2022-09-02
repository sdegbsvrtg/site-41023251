<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo: http://leoeditor.com/leo_toc.html -->
<leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" >
<leo_header file_format="2"/>
<globals/>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="leo.20210526153741.1"><vh>@settings</vh>
<v t="leo.20210526153741.2"><vh>@data qt-gui-plugin-style-sheet</vh></v>
<v t="leo.20210526153741.3"><vh>@string initial_split_orientation = horizontal</vh></v>
</v>
<v t="leo.20210526155936.1"><vh>About W14 task</vh>
<v t="leo.20210529151306.1"><vh>mtbrobot_w14</vh></v>
</v>
<v t="leo.20210529215420.1"><vh>force sensor</vh></v>
<v t="leo.20210529155453.1"><vh>recursive importer</vh></v>
<v t="leo.20220512180031.1"><vh>imported files</vh>
<v t="leo.20220512180031.2"><vh>@path ./</vh>
<v t="leo.20220512180031.3"><vh>@clean mtbrobot.lua</vh>
<v t="leo.20220512180031.4"><vh>sysCall_init (mtbrobot.lua)</vh></v>
<v t="leo.20220512180031.5"><vh>sysCall_cleanup (mtbrobot.lua)</vh></v>
<v t="leo.20220512180031.6"><vh>sysCall_actuation (mtbrobot.lua)</vh></v>
<v t="leo.20220512180031.7"><vh>sysCall_cleanup (mtbrobot.lua)</vh></v>
</v>
<v t="leo.20220512180032.1"><vh>@clean mtbrobot_w14.lua</vh>
<v t="leo.20220512180032.2"><vh>sysCall_init (mtbrobot_w14.lua)</vh></v>
<v t="leo.20220512180032.3"><vh>sysCall_actuation (mtbrobot_w14.lua)</vh>
<v t="leo.20220512180032.4"><vh>sysCall_sensing (mtbrobot_w14.lua)</vh></v>
<v t="leo.20220512180032.5"><vh>sysCall_cleanup (mtbrobot_w14.lua)</vh></v>
<v t="leo.20220512180032.6"><vh>table_to_string (mtbrobot_w14.lua)</vh></v>
<v t="leo.20220512180032.7"><vh>round (mtbrobot_w14.lua)</vh></v>
<v t="leo.20220512180032.8"><vh>insertBox (mtbrobot_w14.lua)</vh></v>
</v>
</v>
<v t="leo.20220512180032.9"><vh>@clean mtbrobot_w15.lua</vh>
<v t="leo.20220512180032.10"><vh>sysCall_init (mtbrobot_w15.lua)</vh></v>
<v t="leo.20220512180032.11"><vh>sysCall_actuation (mtbrobot_w15.lua)</vh>
<v t="leo.20220512180032.12"><vh>sysCall_sensing (mtbrobot_w15.lua)</vh></v>
<v t="leo.20220512180032.13"><vh>sysCall_cleanup (mtbrobot_w15.lua)</vh></v>
<v t="leo.20220512180032.14"><vh>table_to_string (mtbrobot_w15.lua)</vh></v>
<v t="leo.20220512180032.15"><vh>round (mtbrobot_w15.lua)</vh></v>
<v t="leo.20220512180032.16"><vh>insertBox (mtbrobot_w15.lua)</vh></v>
</v>
</v>
<v t="leo.20220512180032.17"><vh>@clean suctionpad.lua</vh>
<v t="leo.20220512180032.18"><vh>sysCall_init (suctionpad.lua)</vh></v>
<v t="leo.20220512180032.19"><vh>sysCall_cleanup (suctionpad.lua)</vh></v>
<v t="leo.20220512180032.20"><vh>sysCall_actuation (suctionpad.lua)</vh></v>
</v>
<v t="leo.20220512180032.21"><vh>@clean suctionpad_w14.lua</vh>
<v t="leo.20220512180032.22"><vh>sysCall_init (suctionpad_w14.lua)</vh></v>
<v t="leo.20220512180032.23"><vh>sysCall_cleanup (suctionpad_w14.lua)</vh></v>
<v t="leo.20220512180032.24"><vh>sysCall_sensing (suctionpad_w14.lua)</vh></v>
</v>
</v>
</v>
</vnodes>
<tnodes>
<t tx="leo.20210526153741.1"></t>
<t tx="leo.20210526153741.2">QTreeWidget {
    /* These apply to the selected item, but not to editing items.*/
    background-color: #ffffec; /* Leo's traditional tree color */
    selection-color: black; /* was white */
    selection-background-color: lightgrey;
    /* font-family: SansSerif; */
    /*font-family: DejaVu Sans Mono;*/
    font-family:YaHei Mono;
    /* 標題字型大小設定 */
    font-size: 30px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
 }

/* Headline edit widgets */
QTreeWidget QLineEdit {
    background-color: cornsilk;
    selection-color: white;
    selection-background-color: blue;
    /*font-family: DejaVu Sans Mono;*/    
    font-family:YaHei Mono;
    /* 沒有特別對應字型大小 */
    font-size: 30px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The log panes */
QTextEdit {
    background-color: #f2fdff;
    selection-color: red;
    selection-background-color: blue;
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* log font 大小 */
    font-size: 30px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The body pane */
QTextEdit#richTextEdit {
    background-color: #fdf5f5; /* A kind of pink. */
    selection-color: white;
    selection-background-color: red;
    /*font-family: DejaVu Sans Mono;*/
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* 內文字型大小 */
    font-size: 30px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

QLabel {
    font-family:YaHei Mono;'CherryPy', 'pytz', 'mako', 'beautifulsoup4', 'pymysql', 'peewee'
    /* 下方的 Minibuffer 標題字型大小 */
    font-size: 30px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

/* Editor labels */
QLineEdit#editorLabel {
    background-color: #ffffec;
    font-family:YaHei Mono;
    /* 沒有直接對應字型大小 */
    font-size: 30px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
    border: 2px;
    margin: 2px;
}</t>
<t tx="leo.20210526153741.3">horizontal: body pane to the left
vertical: body pane on the botton</t>
<t tx="leo.20210526155936.1">https://www.coppeliarobotics.com/helpFiles/en/robotLanguageIntegrationTutorial.htm

目前 MTB_robot 是一項四軸機械手臂, 採用特殊的指令語言令 robot 移動, 並利用 suction pad 執行 pick and place

請各組設法去除原有的特殊控制語法, 編寫一組通用的 lua 程式完成上述 MTB_robot 取放 block 的操作流程.</t>
<t tx="leo.20210529151306.1">將原先透過 plugin 特殊控制語法的場景, 改為直接以 lua 驅動 robot</t>
<t tx="leo.20210529155453.1">'''Recursively import all python files in a directory and clean the result.'''
# ctrl + b to execute

c.recursiveImport(
    dir_ = r'./',
    kind = '@clean', # The new best practice.
    safe_at_file = False,
    theTypes = ['.lua'] 
)</t>
<t tx="leo.20210529215420.1">Force sensors are initially rigid links between two shapes that are able to measure transmitted forces and torques. The rigidity of force sensors is conditional, in the sense that force sensors can be broken if a certain condition arises (e.g. if a force or torque threshold is overshot). Following figure illustrates an application using a force sensor:

A force sensor is only operational during simulation if it is dynamically enabled. It means the child of the force sensor need to be dynamically enabled.

In CoppeliaSim, only a limited number of objects will be dynamically simulated. Those are shapes, joints and force sensors, but it will depend on the scene structure and object properties, whether a given object will be dynamically simulated. </t>
<t tx="leo.20220512180031.1"></t>
<t tx="leo.20220512180031.2"></t>
<t tx="leo.20220512180031.3">@path ./
@others
@language lua
@tabwidth -4
</t>
<t tx="leo.20220512180031.4">function sysCall_init() 
    -- Check if the required plugin (simExtMtb.dll) is there:
    -- ##################################################################
    moduleName=0
    moduleVersion=0
    index=0
    MTBModuleFound=false
    while moduleName do
        moduleName,moduleVersion=sim.getModuleName(index)
        if (moduleName=='Mtb') then
            MTBModuleFound=true
        end
        index=index+1
    end
    if (MTBModuleFound==false) then
        sim.displayDialog('Error','\'Mtb\' plugin was not found. (simExtMtb.dll, libsimExtMtb.dylib or libsimExtMtb.so)&amp;&amp;nSimulation will not run properly',sim.dlgstyle_ok,false,nil,{0.8,0,0,0,0,0},{0.5,0,0,1,1,1})
    end
    -- -----------------------------------------------------------------
    -- Get some object handles that are required later:
    -- ################################################
    robotHandle=sim.getObjectAssociatedWithScript(sim.handle_self)
    userInterfaceHandle=simGetUIHandle('MTB_userInterface')
    inOutDlgHandle=simGetUIHandle('MTB_IN_OUT_userInterface')
    collisionHandle=sim.getCollisionHandle('MTB_Collision')
    jointHandles={-1,-1,-1,-1}
    for i=1,4,1 do
        jointHandles[i]=sim.getObjectHandle('MTB_axis'..i)
    end
    robotName=sim.getObjectName(sim.getObjectAssociatedWithScript(sim.handle_self))
    simSetUIButtonLabel(userInterfaceHandle,0,robotName)
    simSetUIButtonLabel(inOutDlgHandle,0,robotName)
    collisionMessageID=-1
    compilErrorMessageID=-1
    dfltButProp=sim.buttonproperty_button+sim.buttonproperty_horizontallycentered+sim.buttonproperty_staydown+sim.buttonproperty_verticallycentered
    jointPositions={0,0,0,0}
    for i=1,4,1 do
        jointPositions[i]=sim.getJointPosition(jointHandles[i]) -- the initial joint positions
    end
    restarting=false
    cmdMessage=''
    robotProgramExecutionState=1 -- 0 is stopped, 1 is executing, 2 is paused
    -- ------------------------------------------------
    -- Now start the server:
    serverHandle=startRobotServer(robotHandle,program,{0,0,0,0},{0.1,0.4})
end
</t>
<t tx="leo.20220512180031.5">program=[[REM ************************************************
REM This is a very very simple robot language EXAMPLE!
REM Following commands are supported (one command per line):
REM -"REM" starts a comment line
REM -"SETROTVEL v": sets the revolute joint velocity for next movements (in degrees/s)
REM -"SETLINVEL v": sets the prismatic joint velocity for next movements (in meters/s)
REM -"MOVE p1 p2 p3 p4": moves to joint positions (p1;p2;p3;p4) (in degrees or meter)
REM -"WAIT x": waits x miliseconds
REM -"SETBIT y": sets the bit at pos y in the output buffer
REM -"CLEARBIT y": clears the bit at pos y in the output buffer
REM -"IFBITGOTO y label": jumps to "label" position if bit at pos y is set in the input buffer
REM -"IFNBITGOTO y label": jumps to "label" position if bit at pos y is not set in the input buffer
REM -"GOTO label": jumps to "label" position
REM any not recognized word is considered to be a label
REM ************************************************
SETROTVEL 45
SETLINVEL 0.1
MOVE 0 0 0 0
PROGRAM_BEGIN_LABEL
MOVE 0 0 0.03 0
IFBITGOTO 1 LABEL1
SETBIT 1
LABEL1
WAIT 500
MOVE 0 0 0 0
WAIT 250
MOVE -160 -43.5 0 203.5
WAIT 250
MOVE -160 -43.5 0.03 203.5
CLEARBIT 1
WAIT 500
MOVE -160 -43.5 0 203.5
WAIT 250
MOVE 160 43.5 0 -203.5
WAIT 250
MOVE 160 43.5  0.03 -203.5
IFBITGOTO 1 LABEL2
SETBIT 1
LABEL2
WAIT 500
MOVE 160 43.5  0 -203.5
GOTO LABEL1
]]
-- ***********************************************************************************************************************
-- ***********************************************************************************************************************
-- ***********************************************************************************************************************
-- This script makes the link between the MTB robot and the simExtMtb.dll plugin. This script could be much
-- shorter and simple, if everything was taken care of in the plugin. The advantage of handling many things here
-- is that if something needs to be changed, the plugin doesn't require to be recompiled
-- Following commands are registered by the MTB plugin:
--
-- number serverHandle,string msg=simMTB.startServer(string serverExecutable,number connectionPort,string programData,table_4 jointValues,table_2 initialJointVelocity)
-- Starts a robot server, and compiles the program. If result&gt;=0, the call was successful. Otherwise msg contains a compilation error message
--
-- boolean result=simMTB.stopServer(number serverHandle)
-- Stops a robot server
--
-- number result,string info=simMTB.step(number serverHandle,number deltaTime)
-- runs the robot language interpreter for deltaTime. if result==0, the program is running, if result==1 the program ended. Any other value means an error
--
-- table_4 jointValues=simMTB.getJoints(number serverHandle)
-- returns the values of the robot's 4 axis
--
-- table_4 outputValues=simMTB.getOutput(number serverHandle)
-- returns the 32 bits (4*8) of the robot's outputs
--
-- table_4 inputValues=simMTB.getInput(number serverHandle)
-- returns the 32 bits (4*8) of the robot's inputs
--
-- number result=simMTB.setInput(number serverHandle,table_4 inputValues)
-- writes the 32 bits (4*8) of the robot's inputs
--
-- boolean result=simMTB.connectInput(number inputServerHandle,number inputBitNumber,number outputServerHandle,number outputBitNumber,number connectionType)
-- connects a robot's output bit to another robot's input bit. If connectionType~=0 the connection line invertes the bit state
--
-- boolean result=simMTB.disconnectInput(number inputServerHandle,number inputBitNumber)
-- disconnects a connection previously done with simMTB.connectInput
--
-- ***********************************************************************************************************************
-- ***********************************************************************************************************************
-- ***********************************************************************************************************************
startRobotServer=function(theRobotHandle,theProgram,initJoints,initVel)
    -- Find a (hopefully) free port:
    local portNb=sim.getInt32Parameter(sim.intparam_server_port_next)
    local portStart=sim.getInt32Parameter(sim.intparam_server_port_start)
    local portRange=sim.getInt32Parameter(sim.intparam_server_port_range)
    local newPortNb=portNb+1
    if (newPortNb&gt;=portStart+portRange) then
        newPortNb=portStart
    end
    sim.setInt32Parameter(sim.intparam_server_port_next,newPortNb)
    -- Start the server:
    local serverHandle,errorMsg=simMTB.startServer('mtbServer',portNb,theProgram,initJoints,initVel)
    if serverHandle&lt;0 then
        -- We have a problem. Display the message:
        sim.displayDialog('Compilation Error','Robot \''..robotName..'\' caused a program compilation error: '..errorMsg,sim.dlgstyle_ok,false,nil,{0,0,0,1,1,1},{1,0.74,0,0,0,0})
    end
    -- Now write the server handle to the robot object, so that other objects can access that handle too:
    sim.writeCustomDataBlock(theRobotHandle,'@tmpMTBSERVERHANDLE',sim.packInt32Table({serverHandle}))
    return serverHandle
end
function sysCall_cleanup()
    if serverHandle&gt;=0 then
        simMTB.stopServer(serverHandle)
    end
end 
</t>
<t tx="leo.20220512180031.6">function sysCall_actuation() 
    -- React to "run", "pause" and "stop" presses:
    -- ###########################################
    buttonHandle=simGetUIEventButton(userInterfaceHandle)
    if (buttonHandle==99) then
        -- "Run" was pressed
        if (robotProgramExecutionState==0) then
            robotProgramExecutionState=1
        else
            if (robotProgramExecutionState==2) then robotProgramExecutionState=1 end
        end
    end
    if (buttonHandle==100) then
        -- "Pause" was pressed
        if (robotProgramExecutionState==1) then robotProgramExecutionState=2 end
    end
    if (buttonHandle==101) then
        -- "Stop" was pressed
        if (robotProgramExecutionState~=0) then
            robotProgramExecutionState=0
            restarting=true
            cmdMessage=''
        end
    end
    -- ------------------------------------------
    -- Following section is where the script is communicating with the extension module:
    -- #################################################################################
    if MTBModuleFound and serverHandle&gt;=0 then
        if (robotProgramExecutionState&gt;0) then
            dt=sim.getSimulationTimeStep()
            if (robotProgramExecutionState==2) then dt=0 end -- When pausing, we simply set dt to zero!
            if (restarting) then
                -- Reset the robot and interpreter:
                simMTB.stopServer(serverHandle)
                serverHandle=startRobotServer(robotHandle,program,{0,0,0,0},{0.1,0.4})
                restarting=false
            else
                -- Handle the robot program (simMTB.run is a custom Lua command defined in the simExtMtb.dll extension module):
                result,cmdMessage,newJointPositions=simMTB.step(serverHandle,dt)
                if (result~=-1) then
                    -- program executes fine
                    -- Read the joint values and the robot's output (simMTB.getJoints and simMTB.getOutput are custom Lua command defined in the simExtMtb.dll extension module):
                    jointPositions=simMTB.getJoints(serverHandle)
                    outputData=simMTB.getOutput(serverHandle)
                    if (result==1) then
                        -- program end
                        robotProgramExecutionState=0
                        restarting=true
                        cmdMessage=''
                    end
                end
            end
        end
        -- Read the robot's input (simMTB.getInput is a custom Lua command defined in the simExtMtb.dll extension module):
        inputData=simMTB.getInput(serverHandle)
    end
    -- ---------------------------------------------------------------------------------
    -- Report the new joint positions to the MTB robot:
    -- ################################################
    for i=1,4,1 do
        sim.setJointPosition(jointHandles[i],jointPositions[i])
    end
    -- ------------------------------------------------
    -- Update the main custom dialog:
    -- ##############################
    -- The "run" button:
    runP=0
    if (robotProgramExecutionState~=1) then 
        runP=sim.buttonproperty_enabled
    else
        runP=sim.buttonproperty_isdown
    end
    simSetUIButtonProperty(userInterfaceHandle,99,dfltButProp+runP)
    -- The "pause" button:
    pauseP=0
    if (robotProgramExecutionState==1) then pauseP=sim.buttonproperty_enabled end
    if (robotProgramExecutionState==2) then pauseP=pauseP+sim.buttonproperty_isdown end
    simSetUIButtonProperty(userInterfaceHandle,100,dfltButProp+pauseP)
    -- The "stop" button:
    stopP=0
    if (robotProgramExecutionState~=0) then stopP=sim.buttonproperty_enabled end
    simSetUIButtonProperty(userInterfaceHandle,101,dfltButProp+stopP)
    -- The command label:
    simSetUIButtonLabel(userInterfaceHandle,102,cmdMessage)
    -- The joint labels:
    simSetUIButtonLabel(userInterfaceHandle,103,string.format('%.2f',jointPositions[1]*180/math.pi))
    simSetUIButtonLabel(userInterfaceHandle,104,string.format('%.2f',jointPositions[2]*180/math.pi))
    simSetUIButtonLabel(userInterfaceHandle,105,string.format('%.4f',jointPositions[3]))
    simSetUIButtonLabel(userInterfaceHandle,106,string.format('%.2f',jointPositions[4]*180/math.pi))
    -- ------------------------------
    -- Display or hide the digital IN/OUT custom dialog:
    -- #################################################
    if (sim.boolAnd32(simGetUIButtonProperty(userInterfaceHandle,109),sim.buttonproperty_isdown)~=0) then
        simSetUIProperty(inOutDlgHandle,sim.boolOr32(simGetUIProperty(inOutDlgHandle),sim_ui_property_visible))
    else
        simSetUIProperty(inOutDlgHandle,sim.boolOr32(simGetUIProperty(inOutDlgHandle),sim_ui_property_visible)-sim_ui_property_visible)
    end
    -- ------------------------------------------------
    -- Update (read and write) the IN/OUT custom dialog:
    -- #################################################
    if (MTBModuleFound and (sim.boolAnd32(simGetUIProperty(inOutDlgHandle),sim_ui_property_visible)~=0) ) then
        buttonHandle=simGetUIEventButton(inOutDlgHandle)
        if (buttonHandle&gt;=120)and(buttonHandle&lt;=151) then -- React to button presses here:
            inputData[1+math.floor((buttonHandle-120)/8)]=sim.boolXor32(inputData[1+math.floor((buttonHandle-120)/8)],2^math.mod(buttonHandle-120,8))
        end
        -- Write the robot's input (simMTB.setInput is a custom Lua command defined in the simExtMtb.dll extension module):
        simMTB.setInput(serverHandle,inputData)
        for i=0,3,1 do
            for j=0,7,1 do
                if (sim.boolAnd32(inputData[1+i],2^j)~=0) then
                    simSetUIButtonProperty(inOutDlgHandle,120+j+i*8,dfltButProp+sim.buttonproperty_isdown+sim.buttonproperty_enabled)
                else
                    simSetUIButtonProperty(inOutDlgHandle,120+j+i*8,dfltButProp+sim.buttonproperty_enabled)
                end
            end
        end
        for i=0,3,1 do
            for j=0,7,1 do
                if (sim.boolAnd32(outputData[1+i],2^j)~=0) then
                    simSetUIButtonProperty(inOutDlgHandle,220+j+i*8,dfltButProp+sim.buttonproperty_isdown)
                else
                    simSetUIButtonProperty(inOutDlgHandle,220+j+i*8,dfltButProp)
                end
            end
        end
    end
    -- -------------------------------------------------
end
</t>
<t tx="leo.20220512180031.7">function sysCall_cleanup() 
    sim.writeCustomDataBlock(robotHandle,'@tmpMTBSERVERHANDLE',nil)
end 
</t>
<t tx="leo.20220512180032.1">@path ./
@others
@language lua
@tabwidth -4
</t>
<t tx="leo.20220512180032.10">function sysCall_init() 
    axis1=sim.getObjectHandle('MTB_axis1')
    axis2=sim.getObjectHandle('MTB_axis2')
    axis3=sim.getObjectHandle('MTB_axis3')
    axis4=sim.getObjectHandle('MTB_axis4')
    mtb3=sim.getObjectHandle('MTB_link3Respondable')
    suctionPad=sim.getObjectHandle('suctionPad')
    BaseFrame=sim.getObjectHandle("BaseFrame")
    block =sim.getObjectHandle("block")
    rotation1 = 0
    distance3 = 0
    deg = math.pi/180
end
</t>
<t tx="leo.20220512180032.11">function sysCall_actuation() 
    -- 吸盤往下降時, 直接貼在方塊頂部的校正值, 單位 m
    -- 向下校正值為 4.2 mm
    calibration = 0.0042
    message, auxiliaryData=sim.getSimulatorMessage()
        while message ~= -1 do
            key=auxiliaryData[1]
            sim.addStatusbarMessage('使用者按下 key:'..key)
            if (message==sim.message_keypress) then
                if (auxiliaryData[1]==112) then --p activate the suction pad
                    -- if key p pressed activate the suction mode
sim.setScriptSimulationParameter(sim.getScriptAssociatedWithObject(suctionPad),'active','true')
                end -- if p
                if (auxiliaryData[1]==113) then --q deactivate the suction pad
                    -- if key q pressed deactivate the suction mode
sim.setScriptSimulationParameter(sim.getScriptAssociatedWithObject(suctionPad),'active','false')
                end -- if q
                if (auxiliaryData[1]==114) then --r right turn in degree
                    -- if key r pressed axis1 angle adds 5 degrees
                     rotation1 = rotation1 + 5*deg
                     sim.setJointPosition(axis1, rotation1)
                end -- if r
                if (auxiliaryData[1]==108) then --l left turn in degree
                    -- if key l pressed axis1 angle substract 5 degrees
                     rotation1 = rotation1 - 5*deg
                     sim.setJointPosition(axis1, rotation1)
                end -- if l
                if (auxiliaryData[1]==100) then --d suction pad down
                    -- if key d pressed axis3 will down 0.01 m plus calibration
                     distance3 = distance3 + 0.01 + calibration
                     sim.setJointPosition(axis3, distance3)
                end -- if d
                if (auxiliaryData[1]==117) then --u suction pad up
                    -- if key u pressed axis3 will up 0.01 m minus calibration
                    -- 吸盤往下升 1 公分加上校正值
                     distance3 = distance3 - 0.01 - calibration
                     sim.setJointPosition(axis3, distance3)
                end -- if u
                if (auxiliaryData[1]==99) then --c coordinate of block
                    blockPosition = sim.getObjectPosition(block, BaseFrame)
                    sim.addStatusbarMessage("方塊目前座標為:"..table_to_string(blockPosition))
                end --if c
           end  -- if
    message, auxiliaryData=sim.getSimulatorMessage()
        end -- while
end -- function
@others
</t>
<t tx="leo.20220512180032.12">function sysCall_sensing() 
--[[
    -- Read Proximity sensor (0= nothing detected, 1 = object detected)
    local res = sim.readProximitySensor(proximity)

    -- Check if possible to insert an new box
    if (sim.getSimulationTime()-T_last_inserted &gt; T_insert) and not hasStopped then
        insertBox()
    end

    -- If proximity sensor detects an object, stop the belt, stop inserting objects
    if res == 1 and not hasStopped then
        if boolList[1] then
            sim.setScriptSimulationParameter(sim.handle_self,"conveyorBeltVelocity",0)
            deltaTime = sim.getSimulationTime()-T_last_inserted
            hasStopped = true
        else
            local box = table.remove(boxList,1)
            local boxDummy = table.remove(boxDummyList,1)
            table.remove(boolList,1)

            sim.removeObject(box)
            sim.removeObject(boxDummy)
        end
    end

    -- If proximity sensor detects nothing and belt has stopped, start belt, continue inserting
    if res == 0 and hasStopped then
        sim.setScriptSimulationParameter(sim.handle_self,"conveyorBeltVelocity",beltSpeed)
        hasStopped = false
        T_last_inserted = sim.getSimulationTime()-deltaTime
    end
    
]]--
end
</t>
<t tx="leo.20220512180032.13">function sysCall_cleanup() 
end 
</t>
<t tx="leo.20220512180032.14">-- Convert a lua table into a lua syntactically correct string
function table_to_string(tbl)
    local result = "{"
    for k, v in pairs(tbl) do
        -- Check the key type (ignore any numerical keys - assume its an array)
        if type(k) == "string" then
            result = result.."[\""..k.."\"]".."="
        end
        -- Check the value type
        if type(v) == "table" then
            result = result..table_to_string(v)
        elseif type(v) == "boolean" then
            result = result..tostring(v)
        else
            v = round(v, 4)
            result = result.."\""..v.."\""
        end
        result = result..","
    end
    -- Remove leading commas from the result
    if result ~= "" then
        result = result:sub(1, result:len()-1)
    end
    return result.."}"
end
</t>
<t tx="leo.20220512180032.15">function round(x, n)
    n = math.pow(10, n or 0)
    x = x * n
    if x &gt;= 0 then x = math.floor(x + 0.5) else x = math.ceil(x - 0.5) end
    return x / n
end
</t>
<t tx="leo.20220512180032.16">function insertBox()
    -- Generate random numbers
    local rand1 = math.random()
    local rand2 = math.random()
    local rand3 = math.random()
    -- Generate random disturbances on position and orientation
    local dx = (2*rand1-1)*0.1
    local dy = (2*rand2-1)*0.1
    local dphi = (2*rand3-1)*0.5
    local disturbedCoordinates = {0,0,0}
    disturbedCoordinates[1] = insertCoordinate[1]+dx
    disturbedCoordinates[2] = insertCoordinate[2]+dy
    disturbedCoordinates[3] = insertCoordinate[3]
    -- Copy and paste box and boxDummy
    local insertedObjects = sim.copyPasteObjects({box,boxDummy},0)
    -- Update last inserted box time
    T_last_inserted = sim.getSimulationTime()
    -- Move and rotate
    sim.setObjectPosition(insertedObjects[1],-1,disturbedCoordinates)
    sim.setObjectOrientation(insertedObjects[1],-1,{0,0,dphi})
    -- Store handles to boxes and dummies
    table.insert(boxList,insertedObjects[1])
    table.insert(boxDummyList,insertedObjects[2]) 
    -- Decide if object is good or bad
    local decision = math.random() 
    if decision &lt;= goodPercentage then
    -- Object is good, assign goodColor
        sim.setShapeColor(insertedObjects[1],nil,sim.colorcomponent_ambient_diffuse,goodColor)
        table.insert(boolList,true)
    else
    -- Object is bad, assign random color
        sim.setShapeColor(insertedObjects[1],nil,sim.colorcomponent_ambient_diffuse,{rand1,rand2,rand3})
        table.insert(boolList,false)
    end
end
</t>
<t tx="leo.20220512180032.17">@path ./
@others
@language lua
@tabwidth -4
</t>
<t tx="leo.20220512180032.18">function sysCall_init() 
    s=sim.getObjectHandle('suctionPadSensor')
    l=sim.getObjectHandle('suctionPadLoopClosureDummy1')
    l2=sim.getObjectHandle('suctionPadLoopClosureDummy2')
    b=sim.getObjectHandle('suctionPadBodyRespondable')
    sim.setLinkDummy(l,-1)
    sim.setObjectParent(l,b,true)
    m=sim.getObjectMatrix(l2,-1)
    sim.setObjectMatrix(l,-1,m)
    associatedRobotHandle=sim.getObjectHandle('MTB_Robot')
end
</t>
<t tx="leo.20220512180032.19">function sysCall_cleanup() 
    sim.setLinkDummy(l,-1)
    sim.setObjectParent(l,b,true)
    m=sim.getObjectMatrix(l2,-1)
    sim.setObjectMatrix(l,-1,m)
end 
</t>
<t tx="leo.20220512180032.2">function sysCall_init() 
    axis1=sim.getObjectHandle('MTB_axis1')
    axis2=sim.getObjectHandle('MTB_axis2')
    axis3=sim.getObjectHandle('MTB_axis3')
    axis4=sim.getObjectHandle('MTB_axis4')
    mtb3=sim.getObjectHandle('MTB_link3Respondable')
    suctionPad=sim.getObjectHandle('suctionPad')
    MTB_Robot=sim.getObjectHandle("MTB_Robot")
    BaseFrame=sim.getObjectHandle("BaseFrame")
    block =sim.getObjectHandle("block")
    rotation1 = 0
    distance3 = 0
    deg = math.pi/180
end
</t>
<t tx="leo.20220512180032.20">function sysCall_actuation() 
    -- Set the active/inactive state (directly controlled by the robot program):
    active=false
    -- here, read the active flag from the robot server (i.e. to activate the suction cup):
    local serverHandlePacked=sim.readCustomDataBlock(associatedRobotHandle,'@tmpMTBSERVERHANDLE')
    if serverHandlePacked then
        local serverHandle=sim.unpackInt32Table(serverHandlePacked)[1]
        robotOutput=simMTB.getOutput(serverHandle)
        active=(sim.boolAnd32(robotOutput[1],1)==1)
    end
    parent=sim.getObjectParent(l)
    if (active==false) then
        if (parent~=b) then
            sim.setLinkDummy(l,-1)
            sim.setObjectParent(l,b,true)
            m=sim.getObjectMatrix(l2,-1)
            sim.setObjectMatrix(l,-1,m)
        end
    else
        if (parent==b) then
            -- Here we want to detect a respondable shape, and then connect to it with a force sensor (via a loop closure dummy dummy link)
            -- However most respondable shapes are set to "non-detectable", so "sim.readProximitySensor" or similar will not work.
            -- But "sim.checkProximitySensor" or similar will work (they don't check the "detectable" flags), but we have to go through all shape objects!
            index=0
            while true do
                shape=sim.getObjects(index,sim.object_shape_type)
                if (shape==-1) then
                    break
                end
                if (shape~=b) and (sim.checkProximitySensor(s,shape)==1) then
                    -- Ok, we found a shape that was detected. Is it respondable?
                    if (sim.getObjectInt32Parameter(shape,sim.shapeintparam_respondable)~=0) then
                        -- Ok, we connect to that shape:
                        sim.setObjectParent(l,shape,true)
                        sim.setLinkDummy(l,l2)
                        break
                    end
                end
                index=index+1
            end
        end
    end
end 
</t>
<t tx="leo.20220512180032.21">@path ./
@others
@language lua
@tabwidth -4
</t>
<t tx="leo.20220512180032.22">function sysCall_init() 
    s=sim.getObjectHandle('suctionPadSensor')
    l=sim.getObjectHandle('suctionPadLoopClosureDummy1')
    l2=sim.getObjectHandle('suctionPadLoopClosureDummy2')
    b=sim.getObjectHandle('suctionPad')
    suctionPadLink=sim.getObjectHandle('suctionPadLink')
    infiniteStrength=sim.getScriptSimulationParameter(sim.handle_self,'infiniteStrength')
    maxPullForce=sim.getScriptSimulationParameter(sim.handle_self,'maxPullForce')
    maxShearForce=sim.getScriptSimulationParameter(sim.handle_self,'maxShearForce')
    maxPeelTorque=sim.getScriptSimulationParameter(sim.handle_self,'maxPeelTorque')
    sim.setLinkDummy(l,-1)
    sim.setObjectParent(l,b,true)
    m=sim.getObjectMatrix(l2,-1)
    sim.setObjectMatrix(l,-1,m)
end
</t>
<t tx="leo.20220512180032.23">function sysCall_cleanup() 
--[[
    sim.setLinkDummy(l,-1)
    sim.setObjectParent(l,b,true)
    m=sim.getObjectMatrix(l2,-1)
    sim.setObjectMatrix(l,-1,m)
]]--
end 
</t>
<t tx="leo.20220512180032.24">function sysCall_sensing() 
    parent=sim.getObjectParent(l)
    if (sim.getScriptSimulationParameter(sim.handle_self,'active')==false) then
        if (parent~=b) then
            sim.setLinkDummy(l,-1)
            sim.setObjectParent(l,b,true)
            m=sim.getObjectMatrix(l2,-1)
            sim.setObjectMatrix(l,-1,m)
        end
    else
        if (parent==b) then
            -- Here we want to detect a respondable shape, and then connect to it with a force sensor (via a loop closure dummy dummy link)
            -- However most respondable shapes are set to "non-detectable", so "sim.readProximitySensor" or similar will not work.
            -- But "sim.checkProximitySensor" or similar will work (they don't check the "detectable" flags), but we have to go through all shape objects!
            index=0
            while true do
                shape=sim.getObjects(index,sim.object_shape_type)
                if (shape==-1) then
                    break
                end
                if (shape~=b) and (sim.getObjectInt32Parameter(shape,sim.shapeintparam_respondable)~=0) and (sim.checkProximitySensor(s,shape)==1) then
                    -- Ok, we found a respondable shape that was detected
                    -- We connect to that shape:
                    -- Make sure the two dummies are initially coincident:
                    sim.setObjectParent(l,b,true)
                    m=sim.getObjectMatrix(l2,-1)
                    sim.setObjectMatrix(l,-1,m)
                    -- Do the connection:
                    sim.setObjectParent(l,shape,true)
                    sim.setLinkDummy(l,l2)
                    break
                end
                index=index+1
            end
        else
            -- Here we have an object attached
            if (infiniteStrength==false) then
                -- We might have to conditionally beak it apart!
                result,force,torque=sim.readForceSensor(suctionPadLink) -- Here we read the median value out of 5 values (check the force sensor prop. dialog)
                if (result&gt;0) then
                    breakIt=false
                    if (force[3]&gt;maxPullForce) then breakIt=true end
                    sf=math.sqrt(force[1]*force[1]+force[2]*force[2])
                    if (sf&gt;maxShearForce) then breakIt=true end
                    if (torque[1]&gt;maxPeelTorque) then breakIt=true end
                    if (torque[2]&gt;maxPeelTorque) then breakIt=true end
                    if (breakIt) then
                        -- We break the link:
                        sim.setLinkDummy(l,-1)
                        sim.setObjectParent(l,b,true)
                        m=sim.getObjectMatrix(l2,-1)
                        sim.setObjectMatrix(l,-1,m)
                    end
                end
            end
        end
    end
    if (sim.getSimulationState()==sim.simulation_advancing_lastbeforestop) then
        sim.setLinkDummy(l,-1)
        sim.setObjectParent(l,b,true)
        m=sim.getObjectMatrix(l2,-1)
        sim.setObjectMatrix(l,-1,m)
    end
end 
</t>
<t tx="leo.20220512180032.3">function sysCall_actuation() 
    message, auxiliaryData=sim.getSimulatorMessage()
        while message ~= -1 do
            key=auxiliaryData[1]
            sim.addStatusbarMessage('使用者按下 key:'..key)
            if (message==sim.message_keypress) then
                if (auxiliaryData[1]==112) then --p activate the suction pad
                    -- if key p pressed activate the suction mode
sim.setScriptSimulationParameter(sim.getScriptAssociatedWithObject(suctionPad),'active','true')
                end -- if p
                if (auxiliaryData[1]==113) then --q deactivate the suction pad
                    -- if key q pressed deactivate the suction mode
sim.setScriptSimulationParameter(sim.getScriptAssociatedWithObject(suctionPad),'active','false')
                end -- if q
                if (auxiliaryData[1]==114) then --r right turn in degree
                    -- if key r pressed axis1 angle adds 5 degrees
                     rotation1 = rotation1 + 5*deg
                     sim.setJointPosition(axis1, rotation1)
                end -- if r
                if (auxiliaryData[1]==108) then --l left turn in degree
                    -- if key l pressed axis1 angle substract 5 degrees
                     rotation1 = rotation1 - 5*deg
                     sim.setJointPosition(axis1, rotation1)
                end -- if l
                if (auxiliaryData[1]==100) then --d suction pad down
                    -- if key d pressed axis3 will down 0.01 m
                     distance3 = distance3 + 0.01
                     sim.setJointPosition(axis3, distance3)
                end -- if d
                if (auxiliaryData[1]==117) then --u suction pad up
                    -- if key u pressed axis3 will up 0.01 m
                     distance3 = distance3 - 0.01
                     sim.setJointPosition(axis3, distance3)
                end -- if u
                if (auxiliaryData[1]==99) then --c coordinate of block
                    blockPosition = sim.getObjectPosition(block, BaseFrame)
                    sim.addStatusbarMessage("方塊目前座標為:"..table_to_string(blockPosition))
                end --if c
           end  -- if
    message, auxiliaryData=sim.getSimulatorMessage()
        end -- while
end -- function
@others
</t>
<t tx="leo.20220512180032.4">function sysCall_sensing() 
--[[
    -- Read Proximity sensor (0= nothing detected, 1 = object detected)
    local res = sim.readProximitySensor(proximity)

    -- Check if possible to insert an new box
    if (sim.getSimulationTime()-T_last_inserted &gt; T_insert) and not hasStopped then
        insertBox()
    end

    -- If proximity sensor detects an object, stop the belt, stop inserting objects
    if res == 1 and not hasStopped then
        if boolList[1] then
            sim.setScriptSimulationParameter(sim.handle_self,"conveyorBeltVelocity",0)
            deltaTime = sim.getSimulationTime()-T_last_inserted
            hasStopped = true
        else
            local box = table.remove(boxList,1)
            local boxDummy = table.remove(boxDummyList,1)
            table.remove(boolList,1)

            sim.removeObject(box)
            sim.removeObject(boxDummy)
        end
    end

    -- If proximity sensor detects nothing and belt has stopped, start belt, continue inserting
    if res == 0 and hasStopped then
        sim.setScriptSimulationParameter(sim.handle_self,"conveyorBeltVelocity",beltSpeed)
        hasStopped = false
        T_last_inserted = sim.getSimulationTime()-deltaTime
    end
    
]]--
end
</t>
<t tx="leo.20220512180032.5">function sysCall_cleanup() 
end 
</t>
<t tx="leo.20220512180032.6">-- Convert a lua table into a lua syntactically correct string
function table_to_string(tbl)
    local result = "{"
    for k, v in pairs(tbl) do
        -- Check the key type (ignore any numerical keys - assume its an array)
        if type(k) == "string" then
            result = result.."[\""..k.."\"]".."="
        end
        -- Check the value type
        if type(v) == "table" then
            result = result..table_to_string(v)
        elseif type(v) == "boolean" then
            result = result..tostring(v)
        else
            v = round(v, 4)
            result = result.."\""..v.."\""
        end
        result = result..","
    end
    -- Remove leading commas from the result
    if result ~= "" then
        result = result:sub(1, result:len()-1)
    end
    return result.."}"
end
</t>
<t tx="leo.20220512180032.7">function round(x, n)
    n = math.pow(10, n or 0)
    x = x * n
    if x &gt;= 0 then x = math.floor(x + 0.5) else x = math.ceil(x - 0.5) end
    return x / n
end
</t>
<t tx="leo.20220512180032.8">function insertBox()
    -- Generate random numbers
    local rand1 = math.random()
    local rand2 = math.random()
    local rand3 = math.random()
    -- Generate random disturbances on position and orientation
    local dx = (2*rand1-1)*0.1
    local dy = (2*rand2-1)*0.1
    local dphi = (2*rand3-1)*0.5
    local disturbedCoordinates = {0,0,0}
    disturbedCoordinates[1] = insertCoordinate[1]+dx
    disturbedCoordinates[2] = insertCoordinate[2]+dy
    disturbedCoordinates[3] = insertCoordinate[3]
    -- Copy and paste box and boxDummy
    local insertedObjects = sim.copyPasteObjects({box,boxDummy},0)
    -- Update last inserted box time
    T_last_inserted = sim.getSimulationTime()
    -- Move and rotate
    sim.setObjectPosition(insertedObjects[1],-1,disturbedCoordinates)
    sim.setObjectOrientation(insertedObjects[1],-1,{0,0,dphi})
    -- Store handles to boxes and dummies
    table.insert(boxList,insertedObjects[1])
    table.insert(boxDummyList,insertedObjects[2]) 
    -- Decide if object is good or bad
    local decision = math.random() 
    if decision &lt;= goodPercentage then
    -- Object is good, assign goodColor
        sim.setShapeColor(insertedObjects[1],nil,sim.colorcomponent_ambient_diffuse,goodColor)
        table.insert(boolList,true)
    else
    -- Object is bad, assign random color
        sim.setShapeColor(insertedObjects[1],nil,sim.colorcomponent_ambient_diffuse,{rand1,rand2,rand3})
        table.insert(boolList,false)
    end
end
</t>
<t tx="leo.20220512180032.9">@path ./
@others
@language lua
@tabwidth -4
</t>
</tnodes>
</leo_file>
