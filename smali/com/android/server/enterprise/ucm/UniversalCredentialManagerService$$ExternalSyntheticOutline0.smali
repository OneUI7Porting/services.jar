.class public abstract synthetic Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$$ExternalSyntheticOutline0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# direct methods
.method public static m(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateContextInfo(Lcom/samsung/android/knox/ContextInfo;)V

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isValidParam(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method
