.class public abstract Lcom/android/server/battery/sleepcharging/RunestoneStateContract;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "content://com.samsung.android.rubin.state"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/android/server/battery/sleepcharging/RunestoneStateContract;->CONTENT_URI:Landroid/net/Uri;

    .line 9
    .line 10
    const-string/jumbo v1, "enabled"

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 14
    .line 15
    .line 16
    return-void
.end method
