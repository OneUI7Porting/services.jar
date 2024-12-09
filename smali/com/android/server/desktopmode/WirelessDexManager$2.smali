.class public final Lcom/android/server/desktopmode/WirelessDexManager$2;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/WirelessDexManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/WirelessDexManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager$2;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPointerIconChanged(ILandroid/graphics/Bitmap;FF)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/WirelessDexManager$2;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 p2, 0x1

    .line 7
    if-eq p1, p2, :cond_0

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :pswitch_0
    const/16 p1, 0x3f8

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :pswitch_1
    const/16 p1, 0x3f9

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :pswitch_2
    const/16 p1, 0x3f7

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :pswitch_3
    const/16 p1, 0x3f6

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    :pswitch_4
    const/16 p1, 0x3e8

    .line 26
    .line 27
    :goto_0
    const-string/jumbo p2, "wfd_sec_uibc_mouse_cursor_idx"

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p0, p2, p1}, Lcom/android/server/desktopmode/WirelessDexManager;->setWifiDisplayParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x2789
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
