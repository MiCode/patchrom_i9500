.class Lcom/android/server/toolkit/ToolkitManagerService$ReceiveData;
.super Ljava/lang/Object;
.source "ToolkitManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/toolkit/ToolkitManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReceiveData"
.end annotation


# instance fields
.field mBundle:Landroid/os/Bundle;

.field mIntent:Landroid/content/Intent;

.field mType:I

.field final synthetic this$0:Lcom/android/server/toolkit/ToolkitManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/toolkit/ToolkitManagerService;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter "intent"
    .parameter "type"
    .parameter "data"

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/server/toolkit/ToolkitManagerService$ReceiveData;->this$0:Lcom/android/server/toolkit/ToolkitManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    iput-object p2, p0, Lcom/android/server/toolkit/ToolkitManagerService$ReceiveData;->mIntent:Landroid/content/Intent;

    .line 333
    iput-object p4, p0, Lcom/android/server/toolkit/ToolkitManagerService$ReceiveData;->mBundle:Landroid/os/Bundle;

    .line 334
    iput p3, p0, Lcom/android/server/toolkit/ToolkitManagerService$ReceiveData;->mType:I

    .line 335
    return-void
.end method
