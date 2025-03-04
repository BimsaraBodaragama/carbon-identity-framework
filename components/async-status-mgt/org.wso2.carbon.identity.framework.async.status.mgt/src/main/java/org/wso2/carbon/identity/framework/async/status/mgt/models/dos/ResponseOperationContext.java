package org.wso2.carbon.identity.framework.async.status.mgt.models.dos;

public class ResponseOperationContext {
    private String operationId;
    private String operationType;
    private String operationSubjectId;
    private String resourceType;
    private String residentOrgId;
    private String initiatorId;
    private String operationStatus;

    public ResponseOperationContext() {
    }

    public ResponseOperationContext(String operationId, String operationType, String operationSubjectId, String resourceType, String residentOrgId, String initiatorId, String operationStatus) {
        this.operationId = operationId;
        this.operationType = operationType;
        this.operationSubjectId = operationSubjectId;
        this.resourceType = resourceType;
        this.residentOrgId = residentOrgId;
        this.initiatorId = initiatorId;
        this.operationStatus = operationStatus;
    }

    public String getOperationId() {
        return operationId;
    }

    public void setOperationId(String operationId) {
        this.operationId = operationId;
    }

    public String getOperationType() {
        return operationType;
    }

    public void setOperationType(String operationType) {
        this.operationType = operationType;
    }

    public String getOperationSubjectId() {
        return operationSubjectId;
    }

    public void setOperationSubjectId(String operationSubjectId) {
        this.operationSubjectId = operationSubjectId;
    }

    public String getResourceType() {
        return resourceType;
    }

    public void setResourceType(String resourceType) {
        this.resourceType = resourceType;
    }

    public String getResidentOrgId() {
        return residentOrgId;
    }

    public void setResidentOrgId(String residentOrgId) {
        this.residentOrgId = residentOrgId;
    }

    public String getInitiatorId() {
        return initiatorId;
    }

    public void setInitiatorId(String initiatorId) {
        this.initiatorId = initiatorId;
    }

    public String getOperationStatus() {
        return operationStatus;
    }

    public void setOperationStatus(String operationStatus) {
        this.operationStatus = operationStatus;
    }
}
