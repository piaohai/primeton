<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<workflowProcess productVersion="6.1" schemaVersion="6.0">
  <processHeader>
    <processBasicInfo>
      <processId>com.primeton.vacation.vacationApproval</processId>
      <processName>vacationApproval</processName>
      <priority>60</priority>
      <author>Administrator</author>
      <department>primeton</department>
      <description/>
    </processBasicInfo>
    <dataFields>
      <dataField>
        <name>_role</name>
        <dataType>
          <typeClass>primitive</typeClass>
          <typeValue>String</typeValue>
        </dataType>
        <initialValue/>
        <description>角色</description>
        <isArray>false</isArray>
      </dataField>
      <dataField>
        <name>_vacation</name>
        <dataType>
          <typeClass>sdo</typeClass>
          <typeValue>com.primeton.vacation.vacation.TVacation</typeValue>
        </dataType>
        <initialValue/>
        <description/>
        <isArray>false</isArray>
      </dataField>
      <dataField>
        <name>_result</name>
        <dataType>
          <typeClass>primitive</typeClass>
          <typeValue>Int</typeValue>
        </dataType>
        <initialValue/>
        <description>审批结果</description>
        <isArray>false</isArray>
      </dataField>
    </dataFields>
    <triggerEvents/>
    <timeLimit>
      <isTimeLimitSet>false</isTimeLimitSet>
      <calendarSet>
        <initType>appoint</initType>
        <calendarInfo>
          <resourceType>business-calendar</resourceType>
          <resourceID>default</resourceID>
          <resourceName>默认日历</resourceName>
          <parameters/>
        </calendarInfo>
      </calendarSet>
    </timeLimit>
    <procStarterLists>
      <processStarterType>all</processStarterType>
    </procStarterLists>
    <parameters/>
    <splitTransaction>false</splitTransaction>
    <longProcess>true</longProcess>
    <bizEntityInfo/>
    <calendarInfo>
      <resourceType>business-calendar</resourceType>
      <resourceID>default</resourceID>
      <resourceName>默认日历</resourceName>
      <parameters/>
    </calendarInfo>
    <extendNodes/>
  </processHeader>
  <transitions>
    <transition>
      <from>startActivity</from>
      <to>manualActivity</to>
      <isDefault>true</isDefault>
      <priority>60</priority>
      <displayName/>
      <type>simpleCondition</type>
      <bendPoints/>
    </transition>
    <transition>
      <from>startActivity</from>
      <to>manualActivity2</to>
      <isDefault>false</isDefault>
      <priority>60</priority>
      <displayName/>
      <type>simpleCondition</type>
      <simpleCondition>
        <leftValueType>variable</leftValueType>
        <leftValue>_role</leftValue>
        <compType>EQ</compType>
        <rightValue>部门经理</rightValue>
        <rightValueType>constant</rightValueType>
      </simpleCondition>
      <bendPoints/>
      <branchRule>
        <resourceType>branch-rule</resourceType>
        <resourceID>PROCESS:c745edf5453f4d718f7f77b0c5160794</resourceID>
        <resourceName>分支规则_请假人是部门经理</resourceName>
        <parameters/>
      </branchRule>
    </transition>
    <transition>
      <from>manualActivity</from>
      <to>finishActivity</to>
      <isDefault>true</isDefault>
      <priority>60</priority>
      <displayName/>
      <type>simpleCondition</type>
      <bendPoints/>
    </transition>
    <transition>
      <from>manualActivity2</from>
      <to>finishActivity</to>
      <isDefault>true</isDefault>
      <priority>60</priority>
      <displayName/>
      <type>simpleCondition</type>
      <bendPoints/>
    </transition>
  </transitions>
  <activities>
    <activity>
      <activityId>startActivity</activityId>
      <activityName>开始</activityName>
      <description/>
      <splitType>XOR</splitType>
      <joinType>XOR</joinType>
      <priority>60</priority>
      <activityType>start</activityType>
      <splitTransaction>false</splitTransaction>
      <implementation>
        <startActivity>
          <formFields/>
        </startActivity>
      </implementation>
      <isStartActivity>true</isStartActivity>
      <nodeGraphInfo>
        <color>16777215</color>
        <height>32</height>
        <width>32</width>
        <x>60</x>
        <y>118</y>
        <lookAndFeel>classic</lookAndFeel>
        <fontName>System</fontName>
        <fontSize>12</fontSize>
        <fontWidth>550</fontWidth>
        <foreColor>0</foreColor>
        <isItalic>0</isItalic>
        <isUnderline>0</isUnderline>
        <textHeight>60</textHeight>
      </nodeGraphInfo>
    </activity>
    <activity>
      <activityId>finishActivity</activityId>
      <activityName>结束</activityName>
      <description/>
      <splitType>XOR</splitType>
      <joinType>XOR</joinType>
      <priority>60</priority>
      <activityType>finish</activityType>
      <splitTransaction>false</splitTransaction>
      <activateRule>
        <activateRuleType>directRunning</activateRuleType>
        <applicationInfo>
          <actionType>service-component</actionType>
          
          <application>
            <actionType>service-component</actionType>
            <applicationUri/>
            <transactionType>join</transactionType>
            <exceptionStrategy>rollback</exceptionStrategy>
            <invokePattern>synchronous</invokePattern>
            <parameters/>
          </application>
          <assignments/>
        </applicationInfo>
      </activateRule>
      <isStartActivity>false</isStartActivity>
      <nodeGraphInfo>
        <color>16777215</color>
        <height>32</height>
        <width>32</width>
        <x>330</x>
        <y>114</y>
        <lookAndFeel>classic</lookAndFeel>
        <fontName>System</fontName>
        <fontSize>12</fontSize>
        <fontWidth>550</fontWidth>
        <foreColor>0</foreColor>
        <isItalic>0</isItalic>
        <isUnderline>0</isUnderline>
        <textHeight>60</textHeight>
      </nodeGraphInfo>
    </activity>
    <activity>
      <activityId>manualActivity</activityId>
      <activityName>部门经理审批</activityName>
      <description/>
      <splitType>XOR</splitType>
      <joinType>XOR</joinType>
      <priority>60</priority>
      <activityType>manual</activityType>
      <splitTransaction>false</splitTransaction>
      <activateRule>
        <activateRuleType>directRunning</activateRuleType>
        <applicationInfo>
          <actionType>service-component</actionType>
          
          <application>
            <actionType>service-component</actionType>
            <applicationUri/>
            <transactionType>join</transactionType>
            <exceptionStrategy>rollback</exceptionStrategy>
            <invokePattern>synchronous</invokePattern>
            <parameters/>
          </application>
          <assignments/>
        </applicationInfo>
      </activateRule>
      <implementation>
        <manualActivity>
          <allowAgent>true</allowAgent>
          <customURL>
            <isSpecifyURL>true</isSpecifyURL>
            <urlInfo>/vacation/vacation_approval.jsp</urlInfo>
            <urlType>webpage</urlType>
          </customURL>
          <resetUrl>
            <isSpecifyURL>false</isSpecifyURL>
            <urlType>presentation-logic</urlType>
          </resetUrl>
          <participants>
            <participantType>process-starter</participantType>
            <specialActivityID/>
            <specialPath/>
          </participants>
          <formFields/>
          <timeLimit>
            <isTimeLimitSet>false</isTimeLimitSet>
            <calendarSet>
              <initType>appoint</initType>
              <calendarInfo>
                <resourceType>business-calendar</resourceType>
                <resourceID>default</resourceID>
                <resourceName>默认日历</resourceName>
                <parameters/>
              </calendarInfo>
            </calendarSet>
          </timeLimit>
          <multiWorkItem>
            <isMulWIValid>false</isMulWIValid>
            <workitemNumStrategy>participant-number</workitemNumStrategy>
            <finishRule>all</finishRule>
            <finishRequiredPercent>0</finishRequiredPercent>
            <finishRquiredNum>0</finishRquiredNum>
            <isAutoCancel>false</isAutoCancel>
            <sequentialExecute>false</sequentialExecute>
          </multiWorkItem>
          <triggerEvents>
            <triggerEvent>
              <applicationInfo>
                <actionType>logic-flow</actionType>
                
                <application>
                  <actionType>logic-flow</actionType>
                  <applicationUri>com.primeton.vacation.vacation.updateVacation</applicationUri>
                  <transactionType>join</transactionType>
                  <exceptionStrategy>rollback</exceptionStrategy>
                  <invokePattern>synchronous</invokePattern>
                  <parameters>
                    <parameter>
                      <name>vacation</name>
                      <dataType>
                        <typeClass>sdo</typeClass>
                        <typeValue>com.primeton.vacation.vacation.TVacation</typeValue>
                      </dataType>
                      <isArray>false</isArray>
                      <fillBack>false</fillBack>
                      <description/>
                      <mode>parameter</mode>
                      <value>_vacation</value>
                      <valueType>variable</valueType>
                    </parameter>
                    <parameter>
                      <name>workitemid</name>
                      <dataType>
                        <typeClass>primitive</typeClass>
                        <typeValue>String</typeValue>
                      </dataType>
                      <isArray>false</isArray>
                      <fillBack>false</fillBack>
                      <description/>
                      <mode>parameter</mode>
                      <value>thisWorkItem/workItemID</value>
                      <valueType>variable</valueType>
                    </parameter>
                    <parameter>
                      <name>processInstId</name>
                      <dataType>
                        <typeClass>primitive</typeClass>
                        <typeValue>String</typeValue>
                      </dataType>
                      <isArray>false</isArray>
                      <fillBack>false</fillBack>
                      <description/>
                      <mode>parameter</mode>
                      <value>thisProcessInst/processInstID</value>
                      <valueType>variable</valueType>
                    </parameter>
                  </parameters>
                </application>
                <assignments/>
              </applicationInfo>
              <eventType>after-create-wi</eventType>
              <description/>
            </triggerEvent>
          </triggerEvents>
          <rollBack>
            <applicationInfo>
              <actionType>service-component</actionType>
              
              <application>
                <actionType>service-component</actionType>
                <applicationUri/>
                <transactionType>join</transactionType>
                <exceptionStrategy>rollback</exceptionStrategy>
                <invokePattern>synchronous</invokePattern>
                <parameters/>
              </application>
              <assignments/>
            </applicationInfo>
          </rollBack>
          <freeFlowRule>
            <isFreeActivity>false</isFreeActivity>
            <freeRangeStrategy>freeWithinProcess</freeRangeStrategy>
            <isOnlyLimitedManualActivity>false</isOnlyLimitedManualActivity>
          </freeFlowRule>
          <resetParticipant>originalParticipant</resetParticipant>
          <notification>
            <isSendNotification>false</isSendNotification>
            <actionURL>
              <isSpecifyURL>false</isSpecifyURL>
              <urlType>presentation-logic</urlType>
            </actionURL>
            <participants>
              <participantType>process-starter</participantType>
              <specialActivityID/>
              <specialPath/>
            </participants>
            <isExpandParticipant>false</isExpandParticipant>
            <timeLimit>
              <isTimeLimitSet>false</isTimeLimitSet>
              <calendarSet>
                <initType>appoint</initType>
                <calendarInfo>
                  <resourceType>business-calendar</resourceType>
                  <resourceID>default</resourceID>
                  <resourceName>默认日历</resourceName>
                  <parameters/>
                </calendarInfo>
              </calendarSet>
            </timeLimit>
            <notificationImplType>workItem</notificationImplType>
          </notification>
        </manualActivity>
      </implementation>
      <extendNodes/>
      <isStartActivity>false</isStartActivity>
      <nodeGraphInfo>
        <color>16777215</color>
        <height>45</height>
        <width>64</width>
        <x>180</x>
        <y>45</y>
        <lookAndFeel>classic</lookAndFeel>
        <fontName>System</fontName>
        <fontSize>12</fontSize>
        <fontWidth>550</fontWidth>
        <foreColor>0</foreColor>
        <isItalic>0</isItalic>
        <isUnderline>0</isUnderline>
        <textHeight>60</textHeight>
      </nodeGraphInfo>
    </activity>
    <activity>
      <activityId>manualActivity2</activityId>
      <activityName>总经理审批</activityName>
      <description/>
      <splitType>XOR</splitType>
      <joinType>XOR</joinType>
      <priority>60</priority>
      <activityType>manual</activityType>
      <splitTransaction>false</splitTransaction>
      <activateRule>
        <activateRuleType>directRunning</activateRuleType>
        <applicationInfo>
          <actionType>service-component</actionType>
          
          <application>
            <actionType>service-component</actionType>
            <applicationUri/>
            <transactionType>join</transactionType>
            <exceptionStrategy>rollback</exceptionStrategy>
            <invokePattern>synchronous</invokePattern>
            <parameters/>
          </application>
          <assignments/>
        </applicationInfo>
      </activateRule>
      <implementation>
        <manualActivity>
          <allowAgent>true</allowAgent>
          <customURL>
            <isSpecifyURL>true</isSpecifyURL>
            <urlInfo>/vacation/vacation_approval.jsp</urlInfo>
            <urlType>webpage</urlType>
          </customURL>
          <resetUrl>
            <isSpecifyURL>false</isSpecifyURL>
            <urlType>presentation-logic</urlType>
          </resetUrl>
          <participants>
            <participantType>process-starter</participantType>
            <specialActivityID/>
            <specialPath/>
          </participants>
          <formFields/>
          <timeLimit>
            <isTimeLimitSet>false</isTimeLimitSet>
            <calendarSet>
              <initType>appoint</initType>
              <calendarInfo>
                <resourceType>business-calendar</resourceType>
                <resourceID>default</resourceID>
                <resourceName>默认日历</resourceName>
                <parameters/>
              </calendarInfo>
            </calendarSet>
          </timeLimit>
          <multiWorkItem>
            <isMulWIValid>false</isMulWIValid>
            <workitemNumStrategy>participant-number</workitemNumStrategy>
            <finishRule>all</finishRule>
            <finishRequiredPercent>0</finishRequiredPercent>
            <finishRquiredNum>0</finishRquiredNum>
            <isAutoCancel>false</isAutoCancel>
            <sequentialExecute>false</sequentialExecute>
          </multiWorkItem>
          <triggerEvents>
            <triggerEvent>
              <applicationInfo>
                <actionType>logic-flow</actionType>
                
                <application>
                  <actionType>logic-flow</actionType>
                  <applicationUri>com.primeton.vacation.vacation.updateVacation</applicationUri>
                  <transactionType>join</transactionType>
                  <exceptionStrategy>rollback</exceptionStrategy>
                  <invokePattern>synchronous</invokePattern>
                  <parameters>
                    <parameter>
                      <name>vacation</name>
                      <dataType>
                        <typeClass>sdo</typeClass>
                        <typeValue>com.primeton.vacation.vacation.TVacation</typeValue>
                      </dataType>
                      <isArray>false</isArray>
                      <fillBack>false</fillBack>
                      <description/>
                      <mode>parameter</mode>
                      <value>_vacation</value>
                      <valueType>variable</valueType>
                    </parameter>
                    <parameter>
                      <name>workitemid</name>
                      <dataType>
                        <typeClass>primitive</typeClass>
                        <typeValue>String</typeValue>
                      </dataType>
                      <isArray>false</isArray>
                      <fillBack>false</fillBack>
                      <description/>
                      <mode>parameter</mode>
                      <value>thisWorkItem/workItemID</value>
                      <valueType>variable</valueType>
                    </parameter>
                    <parameter>
                      <name>processInstId</name>
                      <dataType>
                        <typeClass>primitive</typeClass>
                        <typeValue>String</typeValue>
                      </dataType>
                      <isArray>false</isArray>
                      <fillBack>false</fillBack>
                      <description/>
                      <mode>parameter</mode>
                      <value>thisProcessInst/processInstID</value>
                      <valueType>variable</valueType>
                    </parameter>
                  </parameters>
                </application>
                <assignments/>
              </applicationInfo>
              <eventType>after-create-wi</eventType>
              <description/>
            </triggerEvent>
          </triggerEvents>
          <rollBack>
            <applicationInfo>
              <actionType>service-component</actionType>
              
              <application>
                <actionType>service-component</actionType>
                <applicationUri/>
                <transactionType>join</transactionType>
                <exceptionStrategy>rollback</exceptionStrategy>
                <invokePattern>synchronous</invokePattern>
                <parameters/>
              </application>
              <assignments/>
            </applicationInfo>
          </rollBack>
          <freeFlowRule>
            <isFreeActivity>false</isFreeActivity>
            <freeRangeStrategy>freeWithinProcess</freeRangeStrategy>
            <isOnlyLimitedManualActivity>false</isOnlyLimitedManualActivity>
          </freeFlowRule>
          <resetParticipant>originalParticipant</resetParticipant>
          <notification>
            <isSendNotification>false</isSendNotification>
            <actionURL>
              <isSpecifyURL>false</isSpecifyURL>
              <urlType>presentation-logic</urlType>
            </actionURL>
            <participants>
              <participantType>process-starter</participantType>
              <specialActivityID/>
              <specialPath/>
            </participants>
            <isExpandParticipant>false</isExpandParticipant>
            <timeLimit>
              <isTimeLimitSet>false</isTimeLimitSet>
              <calendarSet>
                <initType>appoint</initType>
                <calendarInfo>
                  <resourceType>business-calendar</resourceType>
                  <resourceID>default</resourceID>
                  <resourceName>默认日历</resourceName>
                  <parameters/>
                </calendarInfo>
              </calendarSet>
            </timeLimit>
            <notificationImplType>workItem</notificationImplType>
          </notification>
        </manualActivity>
      </implementation>
      <extendNodes/>
      <isStartActivity>false</isStartActivity>
      <nodeGraphInfo>
        <color>16777215</color>
        <height>45</height>
        <width>64</width>
        <x>181</x>
        <y>180</y>
        <lookAndFeel>classic</lookAndFeel>
        <fontName>System</fontName>
        <fontSize>12</fontSize>
        <fontWidth>550</fontWidth>
        <foreColor>0</foreColor>
        <isItalic>0</isItalic>
        <isUnderline>0</isUnderline>
        <textHeight>60</textHeight>
      </nodeGraphInfo>
    </activity>
  </activities>
  <notes/>
  <resource/>
</workflowProcess>