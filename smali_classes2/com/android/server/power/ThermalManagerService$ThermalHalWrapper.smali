.class public abstract Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mCallback:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$TemperatureChangedCallback;

.field public final mHalLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public abstract connectToHal()Z
.end method

.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract getCurrentCoolingDevices(IZ)Ljava/util/List;
.end method

.method public abstract getCurrentTemperatures(IZ)Ljava/util/List;
.end method

.method public abstract getTemperatureThresholds(IZ)Ljava/util/List;
.end method

.method public setCallback(Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$TemperatureChangedCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mCallback:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$TemperatureChangedCallback;

    .line 2
    .line 3
    return-void
.end method
