.class public final Lcom/android/server/location/injector/SystemScreenInteractiveHelper;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public volatile mIsInteractive:Z

.field public final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public mReady:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;->mIsInteractive:Z

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    return-void
.end method