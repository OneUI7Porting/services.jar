.class public abstract synthetic Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticOutline0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# direct methods
.method public static m(Lcom/android/server/enterprise/security/PasswordPolicy;Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM$28()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceComponentCheck(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p3}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method
