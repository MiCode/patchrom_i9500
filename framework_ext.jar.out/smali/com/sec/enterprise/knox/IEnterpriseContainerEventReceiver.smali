.class public interface abstract Lcom/sec/enterprise/knox/IEnterpriseContainerEventReceiver;
.super Ljava/lang/Object;
.source "IEnterpriseContainerEventReceiver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/enterprise/knox/IEnterpriseContainerEventReceiver$Stub;
    }
.end annotation


# virtual methods
.method public abstract onEvent(ILandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
