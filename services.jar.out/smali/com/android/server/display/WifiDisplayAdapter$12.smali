.class Lcom/android/server/display/WifiDisplayAdapter$12;
.super Ljava/lang/Object;
.source "WifiDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayAdapter;->startSourceRTSP(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;

.field final synthetic val$reqDevType:I


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;I)V
    .locals 0

    .prologue
    .line 1012
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iput p2, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->val$reqDevType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1017
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "wfd"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/wfd/WfdManager;

    .line 1018
    .local v1, wm:Lcom/samsung/wfd/WfdManager;
    if-eqz v1, :cond_0

    .line 1019
    const-string v2, "WifiDisplayAdapter"

    const-string v3, "AllShare Cast is turned on..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    iget v2, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->val$reqDevType:I

    add-int/lit8 v2, v2, 0x5

    invoke-virtual {v1, v2}, Lcom/samsung/wfd/WfdManager;->setWfdEnabled(I)Z

    .line 1021
    invoke-virtual {v1}, Lcom/samsung/wfd/WfdManager;->sendToWfdStartRTSP()Z

    .line 1036
    .end local v1           #wm:Lcom/samsung/wfd/WfdManager;
    :goto_0
    return-void

    .line 1023
    .restart local v1       #wm:Lcom/samsung/wfd/WfdManager;
    :cond_0
    const-string v2, "WifiDisplayAdapter"

    const-string v3, "WfdManager is null !"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1032
    .end local v1           #wm:Lcom/samsung/wfd/WfdManager;
    :catch_0
    move-exception v0

    .line 1033
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "WifiDisplayAdapter"

    const-string v3, "startSourceRTSP failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
