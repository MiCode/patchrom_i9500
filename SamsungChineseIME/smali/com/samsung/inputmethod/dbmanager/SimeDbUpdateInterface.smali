.class public interface abstract Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface;
.super Ljava/lang/Object;
.source "SimeDbUpdateInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;
    }
.end annotation


# static fields
.field public static final EVT_DOWNLOAD_CANCEL:I = 0x9

.field public static final EVT_DOWNLOAD_CONNECT_ERROR:I = 0x6

.field public static final EVT_DOWNLOAD_FAIL:I = 0x2

.field public static final EVT_DOWNLOAD_FINISH:I = 0x0

.field public static final EVT_DOWNLOAD_INPROGRESS:I = 0x8

.field public static final EVT_DOWNLOAD_NETWORK_DOWN:I = 0x4

.field public static final EVT_DOWNLOAD_NO_NETWORK:I = 0x3

.field public static final EVT_DOWNLOAD_SAME_VERSION:I = 0x7

.field public static final EVT_DOWNLOAD_START:I = 0xa

.field public static final EVT_DOWNLOAD_SUC:I = 0x1

.field public static final EVT_DOWNLOAD_TIMEOUT:I = 0x5


# virtual methods
.method public abstract cancelUpdate(I)V
.end method

.method public abstract isUpdating(I)Z
.end method

.method public abstract setUpdateBackground(I)V
.end method

.method public abstract setUpdateCallBack(ILcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;)V
.end method

.method public abstract update(I)V
.end method
