.class public final synthetic Lcom/android/server/integrity/engine/RuleEvaluator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/content/integrity/AppInstallMetadata;


# direct methods
.method public synthetic constructor <init>(Landroid/content/integrity/AppInstallMetadata;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/integrity/engine/RuleEvaluator$$ExternalSyntheticLambda0;->f$0:Landroid/content/integrity/AppInstallMetadata;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/integrity/engine/RuleEvaluator$$ExternalSyntheticLambda0;->f$0:Landroid/content/integrity/AppInstallMetadata;

    .line 2
    .line 3
    check-cast p1, Landroid/content/integrity/Rule;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/integrity/Rule;->getFormula()Landroid/content/integrity/IntegrityFormula;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1, p0}, Landroid/content/integrity/IntegrityFormula;->matches(Landroid/content/integrity/AppInstallMetadata;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method
