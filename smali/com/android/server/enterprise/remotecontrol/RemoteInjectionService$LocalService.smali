.class public final Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$LocalService;
.super Lcom/samsung/android/knox/localservice/RemoteInjectionInternal;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$LocalService;->this$0:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/knox/localservice/RemoteInjectionInternal;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final isRemoteControlDisabled(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$LocalService;->this$0:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteControlDisabled(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
