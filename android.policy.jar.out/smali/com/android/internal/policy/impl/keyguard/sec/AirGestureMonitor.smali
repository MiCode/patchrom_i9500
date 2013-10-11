.class public Lcom/android/internal/policy/impl/keyguard/sec/AirGestureMonitor;
.super Ljava/lang/Object;
.source "AirGestureMonitor.java"

# interfaces
.implements Lcom/samsung/android/service/gesture/GestureListener;
.implements Lcom/samsung/android/service/gesture/GestureManager$ServiceConnectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/sec/AirGestureMonitor$AirGestureMonitorCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AirGestureMonitor"


# instance fields
.field private mCallbacks:Lcom/android/internal/policy/impl/keyguard/sec/AirGestureMonitor$AirGestureMonitorCallback;

.field private mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

.field private mIsAirGestureEnable:Z

.field private mServiceConnected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/AirGestureMonitor;->mIsAirGestureEnable:Z

    .line 46
    new-instance v0, Lcom/samsung/android/service/gesture/GestureManager;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/service/gesture/GestureManager;-><init>(Landroid/content/Context;Lcom/samsung/android/service/gesture/GestureManager$ServiceConnectionListener;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/AirGestureMonitor;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    .line 47
    return-void
.end method

.method private handleAirMove(Z)V
    .locals 2
    .parameter "isLeft"

    .prologue
    .line 50
    if-eqz p1, :cond_1

    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/AirGestureMonitor;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/sec/AirGestureMonitor$AirGestureMonitorCallback;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/AirGestureMonitor;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/sec/AirGestureMonitor$AirGestureMonitorCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/AirGestureMonitor$AirGestureMonitorCallback;->handleAirMove(Z)V

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/AirGestureMonitor;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/sec/AirGestureMonitor$AirGestureMonitorCallback;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/AirGestureMonitor;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/sec/AirGestureMonitor$AirGestureMonitorCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/AirGestureMonitor$AirGestureMonitorCallback;->handleAirMove(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onGestureEvent(Lcom/samsung/android/service/gesture/GestureEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 80
    invoke-virtual {p1}, Lcom/samsung/android/service/gesture/GestureEvent;->getEvent()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 81
    const-string v0, "AirGestureMonitor"

    const-string v1, "GESTURE_EVENT_SWEEP_LEFT"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/AirGestureMonitor;->handleAirMove(Z)V

    .line 84
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/service/gesture/GestureEvent;->getEvent()I

    move-result v0

    if-nez v0, :cond_1

    .line 85
    const-string v0, "AirGestureMonitor"

    const-string v1, "GESTURE_EVENT_SWEEP_RIGHT"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/AirGestureMonitor;->handleAirMove(Z)V

    .line 88
    :cond_1
    return-void
.end method

.method public onServiceConnected()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/AirGestureMonitor;->mServiceConnected:Z

    .line 93
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public registerCallback(Lcom/android/internal/policy/impl/keyguard/sec/AirGestureMonitor$AirGestureMonitorCallback;)V
    .locals 4
    .parameter "callback"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/AirGestureMonitor;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/sec/AirGestureMonitor$AirGestureMonitorCallback;

    .line 67
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/AirGestureMonitor;->mIsAirGestureEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/AirGestureMonitor;->mServiceConnected:Z

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/AirGestureMonitor;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    const-string v1, "ir_provider"

    const-string v2, "air_motion_item_move"

    const/4 v3, 0x1

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/samsung/android/service/gesture/GestureManager;->registerListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 70
    :cond_0
    return-void
.end method

.method public removeCallback()V
    .locals 2

    .prologue
    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/AirGestureMonitor;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/sec/AirGestureMonitor$AirGestureMonitorCallback;

    .line 61
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/AirGestureMonitor;->mIsAirGestureEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/AirGestureMonitor;->mServiceConnected:Z

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/AirGestureMonitor;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    const-string v1, "ir_provider"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/service/gesture/GestureManager;->unregisterListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;)V

    .line 63
    :cond_0
    return-void
.end method

.method public unbindFromService()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/AirGestureMonitor;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/AirGestureMonitor;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    invoke-virtual {v0}, Lcom/samsung/android/service/gesture/GestureManager;->unbindFromService()V

    .line 76
    :cond_0
    return-void
.end method
