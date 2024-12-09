.class public Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;
.super Ljava/lang/Exception;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "Invalid call to legacy dexopt method while ART Service is in use."

    .line 2
    .line 3
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
