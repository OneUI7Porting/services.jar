.class public final Lcom/android/server/utils/AnrTimer$Args;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mInjector:Lcom/android/server/utils/AnrTimer$Injector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/android/server/utils/AnrTimer;->sDefaultInjector:Lcom/android/server/utils/AnrTimer$Injector;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/server/utils/AnrTimer$Args;->mInjector:Lcom/android/server/utils/AnrTimer$Injector;

    .line 7
    .line 8
    return-void
.end method
