.class public final Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mKeys:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/server/accounts/TokenCache$TokenLruCache;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/TokenCache$TokenLruCache;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;->this$0:Lcom/android/server/accounts/TokenCache$TokenLruCache;

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;->mKeys:Ljava/util/List;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final evict()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;->mKeys:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/android/server/accounts/TokenCache$Key;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;->this$0:Lcom/android/server/accounts/TokenCache$TokenLruCache;

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method