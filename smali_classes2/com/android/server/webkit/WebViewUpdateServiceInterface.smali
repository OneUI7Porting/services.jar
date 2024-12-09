.class public interface abstract Lcom/android/server/webkit/WebViewUpdateServiceInterface;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# virtual methods
.method public abstract changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract dumpState(Ljava/io/PrintWriter;)V
.end method

.method public abstract enableMultiProcess(Z)V
.end method

.method public abstract getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;
.end method

.method public abstract getDefaultWebViewPackage()Landroid/webkit/WebViewProviderInfo;
.end method

.method public abstract getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
.end method

.method public abstract getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
.end method

.method public abstract handleNewUser(I)V
.end method

.method public abstract handleUserRemoved()V
.end method

.method public abstract isMultiProcessEnabled()Z
.end method

.method public abstract notifyRelroCreationCompleted()V
.end method

.method public abstract packageStateChanged(Ljava/lang/String;)V
.end method

.method public abstract prepareWebViewInSystemServer()V
.end method

.method public abstract waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;
.end method
