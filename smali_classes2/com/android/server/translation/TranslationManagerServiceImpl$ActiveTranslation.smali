.class public final Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public isPaused:Z

.field public final packageName:Ljava/lang/String;

.field public final sourceSpec:Landroid/view/translation/TranslationSpec;

.field public final targetSpec:Landroid/view/translation/TranslationSpec;

.field public final translatedAppUid:I


# direct methods
.method public constructor <init>(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->isPaused:Z

    .line 6
    .line 7
    iput-object p2, p0, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->sourceSpec:Landroid/view/translation/TranslationSpec;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->targetSpec:Landroid/view/translation/TranslationSpec;

    .line 10
    .line 11
    iput p1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->translatedAppUid:I

    .line 12
    .line 13
    iput-object p4, p0, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->packageName:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method
