.class public final Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService$1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$VultureCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;


# direct methods
.method public constructor <init>(Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService$1;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onServiceDied(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;

    .line 2
    .line 3
    const-string p1, "ContentSuggestionsPerUserService"

    .line 4
    .line 5
    const-string/jumbo v0, "remote content suggestions service died"

    .line 6
    .line 7
    .line 8
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService$1;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;

    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->mRemoteService:Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->destroy()V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->mRemoteService:Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;

    .line 22
    .line 23
    :cond_0
    return-void
.end method
