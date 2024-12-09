.class public abstract Lcom/android/server/desktopmode/DesktopModeKillPolicyManager;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final KEEP_POLICY_PACKAGES:Ljava/util/Set;

.field public static final KILL_POLICY_PACKAGES:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const-string/jumbo v6, "com.google.android.apps.docs.editors.sheets"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v7, "com.google.android.apps.docs.editors.slides"

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "com.google.android.apps.tachyon"

    .line 8
    .line 9
    .line 10
    const-string/jumbo v1, "com.google.android.music"

    .line 11
    .line 12
    .line 13
    const-string/jumbo v2, "com.google.android.videos"

    .line 14
    .line 15
    .line 16
    const-string/jumbo v3, "com.google.android.apps.photos"

    .line 17
    .line 18
    .line 19
    const-string/jumbo v4, "com.google.android.apps.docs"

    .line 20
    .line 21
    .line 22
    const-string/jumbo v5, "com.google.android.apps.docs.editors.docs"

    .line 23
    .line 24
    .line 25
    invoke-static/range {v0 .. v7}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/android/server/desktopmode/DesktopModeKillPolicyManager;->KEEP_POLICY_PACKAGES:Ljava/util/Set;

    .line 30
    .line 31
    const-string/jumbo v7, "com.microsoft.office.powerpoint"

    .line 32
    .line 33
    .line 34
    const-string/jumbo v8, "com.facebook.katana"

    .line 35
    .line 36
    .line 37
    const-string/jumbo v1, "com.sec.android.app.sbrowser"

    .line 38
    .line 39
    .line 40
    const-string/jumbo v2, "com.sec.android.inputmethod"

    .line 41
    .line 42
    .line 43
    const-string/jumbo v3, "com.sec.android.inputmethod.beta"

    .line 44
    .line 45
    .line 46
    const-string/jumbo v4, "com.sec.android.inputmethod.iwnnime.japan"

    .line 47
    .line 48
    .line 49
    const-string/jumbo v5, "com.microsoft.office.word"

    .line 50
    .line 51
    .line 52
    const-string/jumbo v6, "com.microsoft.office.excel"

    .line 53
    .line 54
    .line 55
    invoke-static/range {v1 .. v8}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sput-object v0, Lcom/android/server/desktopmode/DesktopModeKillPolicyManager;->KILL_POLICY_PACKAGES:Ljava/util/Set;

    .line 60
    .line 61
    return-void
.end method
