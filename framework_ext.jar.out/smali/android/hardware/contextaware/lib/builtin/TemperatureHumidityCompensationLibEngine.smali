.class public Landroid/hardware/contextaware/lib/builtin/TemperatureHumidityCompensationLibEngine;
.super Ljava/lang/Object;
.source "TemperatureHumidityCompensationLibEngine.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "/system/lib/libsensorhubcontext.so"

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native native_temperaturehumidity_getCompensatedData(DD[D[DJ)V
.end method

.method public native native_temperaturehumidity_getLastCompensatedData([D[D)V
.end method
