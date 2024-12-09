.class public interface abstract Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# virtual methods
.method public abstract getEnergyConsumed([I)[Landroid/hardware/power/stats/EnergyConsumerResult;
.end method

.method public abstract getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;
.end method

.method public abstract getEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;
.end method

.method public abstract getPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;
.end method

.method public abstract getStateResidency([I)[Landroid/hardware/power/stats/StateResidencyResult;
.end method

.method public abstract isInitialized()Z
.end method

.method public abstract readEnergyMeter([I)[Landroid/hardware/power/stats/EnergyMeasurement;
.end method
