.class public final Lcom/android/server/notification/NotificationClassifier;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mClassifier:Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier;

.field public mClassifierSupported:Z

.field public final mContext:Landroid/content/Context;

.field public mInitialized:Z

.field public mOptions:Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier$ClassifyOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationClassifier;->mInitialized:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationClassifier;->mClassifierSupported:Z

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/android/server/notification/NotificationClassifier;->mClassifier:Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/notification/NotificationClassifier;->mOptions:Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier$ClassifyOptions;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/server/notification/NotificationClassifier;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    return-void
.end method
