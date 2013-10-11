.class public interface abstract Lcom/sec/android/smartface/ISmartFaceClient;
.super Ljava/lang/Object;
.source "ISmartFaceClient.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/smartface/ISmartFaceClient$Stub;
    }
.end annotation


# virtual methods
.method public abstract onInfo(Lcom/sec/android/smartface/FaceInfo;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
