.class public final Lcom/android/server/wm/TaskPersister$RecentTaskFiles;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mLoadedFiles:Ljava/util/ArrayList;

.field public final mUserTaskFiles:[Ljava/io/File;


# direct methods
.method public constructor <init>([Ljava/io/File;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/TaskPersister$RecentTaskFiles;->mUserTaskFiles:[Ljava/io/File;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/TaskPersister$RecentTaskFiles;->mLoadedFiles:Ljava/util/ArrayList;

    .line 7
    .line 8
    return-void
.end method
