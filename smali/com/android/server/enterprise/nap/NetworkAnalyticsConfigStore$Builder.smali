.class public final Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public adminUid:I

.field public flags:I

.field public flowTypeForProfile:I

.field public intervalValueForProfile:I

.field public jsonString:Ljava/lang/String;

.field public opUserId:I

.field public packageName:Ljava/lang/String;

.field public packageSignature:Ljava/lang/String;

.field public final profileName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

.field public userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->profileName:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method
