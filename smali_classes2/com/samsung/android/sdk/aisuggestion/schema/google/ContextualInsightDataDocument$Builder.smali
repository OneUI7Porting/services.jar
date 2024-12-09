.class public final Lcom/samsung/android/sdk/aisuggestion/schema/google/ContextualInsightDataDocument$Builder;
.super Landroid/app/appsearch/GenericDocument$Builder;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# virtual methods
.method public final bridge synthetic build()Landroid/app/appsearch/GenericDocument;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/aisuggestion/schema/google/ContextualInsightDataDocument$Builder;->build()Lcom/samsung/android/sdk/aisuggestion/schema/google/ContextualInsightDataDocument;

    move-result-object p0

    return-object p0
.end method

.method public final build()Lcom/samsung/android/sdk/aisuggestion/schema/google/ContextualInsightDataDocument;
    .locals 1

    .line 2
    new-instance v0, Lcom/samsung/android/sdk/aisuggestion/schema/google/ContextualInsightDataDocument;

    invoke-super {p0}, Landroid/app/appsearch/GenericDocument$Builder;->build()Landroid/app/appsearch/GenericDocument;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/aisuggestion/schema/google/ContextualInsightDataDocument;-><init>(Landroid/app/appsearch/GenericDocument;)V

    return-object v0
.end method
