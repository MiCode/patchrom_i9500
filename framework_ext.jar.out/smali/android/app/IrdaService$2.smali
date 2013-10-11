.class Landroid/app/IrdaService$2;
.super Landroid/content/BroadcastReceiver;
.source "IrdaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IrdaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/IrdaService;


# direct methods
.method constructor <init>(Landroid/app/IrdaService;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Landroid/app/IrdaService$2;->this$0:Landroid/app/IrdaService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 231
    const-string v1, "IrdaService"

    const-string v2, "IrdaService : onReceive  1"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    if-nez p2, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    const-string v1, "IrdaService"

    const-string v2, "IrdaService : onReceive  2"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Landroid/app/IrdaService$2;->this$0:Landroid/app/IrdaService;

    #calls: Landroid/app/IrdaService;->isEnalbed()V
    invoke-static {v1}, Landroid/app/IrdaService;->access$100(Landroid/app/IrdaService;)V

    .line 237
    const-string v1, "IrdaService"

    const-string v2, "IrdaService : ACTION_DEVICE_POLICY_MANAGER_STATE_CHANGED."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
