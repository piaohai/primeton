/*
 * Copyright 2013 Primeton Technologies Ltd.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.gocom.components.coframe.framework;

import com.eos.das.entity.IDASCriteria;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.eos.spring.DASDaoSupport;
import com.primeton.cap.TenantManager;

import org.gocom.components.coframe.framework.application.AppFuncresource;

import commonj.sdo.DataObject;

/**
 * TODO 此处填写 class 信息
 *
 * @author fangwl (mailto:fangwl@primeton.com)
 */
public class AppFuncresourceService extends DASDaoSupport implements IAppFuncresourceService{
	public void addAppFuncresource(AppFuncresource appFuncresource){
		getDASTemplate().getPrimaryKey(appFuncresource);
		appFuncresource.setTenant_id(TenantManager.getCurrentTenantID());
		getDASTemplate().insertEntity(appFuncresource);
	}

	public void deleteAppFuncresource(AppFuncresource[] appFuncresources ){
		for(DataObject appFuncresource:appFuncresources){
			getDASTemplate().deleteEntityCascade(appFuncresource);
		}
	}


	public void getAppFuncresource(AppFuncresource appFuncresource){
		getDASTemplate().expandEntity(appFuncresource);
	}


	public AppFuncresource[]  queryAppFuncresources(CriteriaType criteriaType,PageCond pageCond){
		IDASCriteria dasCriteria = getDASTemplate().criteriaTypeToDASCriteria(criteriaType);
		return getDASTemplate().queryEntitiesByCriteriaEntityWithPage(AppFuncresource.class, dasCriteria, pageCond);
	}


    public void updateAppFuncresource(AppFuncresource appFuncresource){
	    getDASTemplate().updateEntity(appFuncresource);
    }
    
}
