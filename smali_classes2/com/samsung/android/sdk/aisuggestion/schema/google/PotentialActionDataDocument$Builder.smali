.class public final Lcom/samsung/android/sdk/aisuggestion/schema/google/PotentialActionDataDocument$Builder;
.super Landroid/app/appsearch/GenericDocument$Builder;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const-string v0, "ContextualInsightData"

    .line 2
    .line 3
    const-string v1, "ContextualInsightData:PotentialAction"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    invoke-direct {p0, v0, v2, v1}, Landroid/app/appsearch/GenericDocument$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final bridge synthetic build()Landroid/app/appsearch/GenericDocument;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/aisuggestion/schema/google/PotentialActionDataDocument$Builder;->build()Lcom/samsung/android/sdk/aisuggestion/schema/google/PotentialActionDataDocument;

    move-result-object p0

    return-object p0
.end method

.method public final build()Lcom/samsung/android/sdk/aisuggestion/schema/google/PotentialActionDataDocument;
    .locals 1

    .line 2
    new-instance v0, Lcom/samsung/android/sdk/aisuggestion/schema/google/PotentialActionDataDocument;

    invoke-super {p0}, Landroid/app/appsearch/GenericDocument$Builder;->build()Landroid/app/appsearch/GenericDocument;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/aisuggestion/schema/google/PotentialActionDataDocument;-><init>(Landroid/app/appsearch/GenericDocument;)V

    return-object v0
.end method
