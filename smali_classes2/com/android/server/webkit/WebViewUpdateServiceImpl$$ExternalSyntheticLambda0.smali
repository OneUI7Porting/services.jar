.class public final synthetic Lcom/android/server/webkit/WebViewUpdateServiceImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/webkit/WebViewUpdateServiceImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/webkit/WebViewUpdateServiceImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemImpl;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/webkit/WebViewZygote;->getProcess()Landroid/os/ZygoteProcess;

    .line 12
    .line 13
    .line 14
    return-void
.end method