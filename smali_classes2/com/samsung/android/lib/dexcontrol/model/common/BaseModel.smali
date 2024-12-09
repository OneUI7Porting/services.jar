.class public abstract Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mTATypeMap:Ljava/util/HashMap;

.field public final mUsbClassMap:Ljava/util/HashMap;

.field public final mUsbDeviceReceiver:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$3;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    new-instance v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$1;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$1;-><init>(Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->mUsbClassMap:Ljava/util/HashMap;

    .line 13
    .line 14
    new-instance v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$2;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$2;-><init>(Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->mTATypeMap:Ljava/util/HashMap;

    .line 20
    .line 21
    new-instance v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$3;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$3;-><init>(Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->mUsbDeviceReceiver:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$3;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    new-instance p1, Landroid/content/IntentFilter;

    .line 31
    .line 32
    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 33
    .line 34
    invoke-direct {p1, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    const/4 v1, 0x2

    .line 40
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public abstract usbDeviceChanged(ILjava/lang/String;)V
.end method
