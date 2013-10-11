.class public interface abstract Lcom/android/internal/policy/impl/IDeviceUnlockService;
.super Ljava/lang/Object;
.source "IDeviceUnlockService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/IDeviceUnlockService$Stub;
    }
.end annotation


# virtual methods
.method public abstract isScreenLocked()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unlockScreen(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
