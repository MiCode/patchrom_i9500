.class Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService$boradCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SimeDbAutoUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "boradCastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService$boradCastReceiver;->this$0:Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.inputmethod.setting.dbmanager.WLAN_ONLY_STATUS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    const-string v1, "wlan.only.status"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 85
    .local v0, bChecked:Z
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService$boradCastReceiver;->this$0:Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;

    #getter for: Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->DEBUG:Z
    invoke-static {v1}, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->access$000(Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SimeDbAutoUpdateService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wlan only value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    if-eqz v0, :cond_2

    .line 88
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService$boradCastReceiver;->this$0:Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->startAutoUpdate()V

    .line 93
    .end local v0           #bChecked:Z
    :cond_1
    :goto_0
    return-void

    .line 90
    .restart local v0       #bChecked:Z
    :cond_2
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService$boradCastReceiver;->this$0:Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->stopAutoUpdate()V

    goto :goto_0
.end method
