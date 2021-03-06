/*
 * Copyright 2017 flow.ci
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.flow.platform.api.domain.request;

import com.flow.platform.api.domain.user.ActionGroup;

/**
 * @author yang
 */
public class ActionParam {

    private String alias;

    private String description;

    private ActionGroup tag;

    public ActionParam() {
    }

    public ActionParam(String alias, String description, ActionGroup tag) {
        this.alias = alias;
        this.description = description;
        this.tag = tag;
    }

    public String getAlias() {
        return alias;
    }

    public void setAlias(String alias) {
        this.alias = alias;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public ActionGroup getTag() {
        return tag;
    }

    public void setTag(ActionGroup tag) {
        this.tag = tag;
    }
}
