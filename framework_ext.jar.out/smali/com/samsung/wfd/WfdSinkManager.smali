.class public Lcom/samsung/wfd/WfdSinkManager;
.super Ljava/lang/Object;
.source "WfdSinkManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WfdSinkManager"


# instance fields
.field mSinkService:Lcom/samsung/wfd/IWfdSinkManager;


# direct methods
.method public constructor <init>(Lcom/samsung/wfd/IWfdSinkManager;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/samsung/wfd/WfdSinkManager;->mSinkService:Lcom/samsung/wfd/IWfdSinkManager;

    .line 35
    return-void
.end method


# virtual methods
.method public setWfdTerminate()Z
    .locals 2

    .prologue
    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdSinkManager;->mSinkService:Lcom/samsung/wfd/IWfdSinkManager;

    invoke-interface {v1}, Lcom/samsung/wfd/IWfdSinkManager;->setWfdTerminate()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 41
    :goto_0
    return v1

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method
