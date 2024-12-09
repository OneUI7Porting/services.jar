.class public interface abstract Lcom/android/server/appfunctions/CallerValidator;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# virtual methods
.method public abstract isUserOrganizationManaged(Landroid/os/UserHandle;)Z
.end method

.method public abstract validateCallingPackage(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract verifyCallerCanExecuteAppFunction(IILandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;)Lcom/android/internal/infra/AndroidFuture;
.end method

.method public abstract verifyTargetUserHandle(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/os/UserHandle;
.end method
