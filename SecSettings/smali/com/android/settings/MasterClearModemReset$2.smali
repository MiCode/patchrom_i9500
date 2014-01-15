.class Lcom/android/settings_ex/MasterClearModemReset$2;
.super Ljava/lang/Object;
.source "MasterClearModemReset.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/MasterClearModemReset;->onStart(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/MasterClearModemReset;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/MasterClearModemReset;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/settings_ex/MasterClearModemReset$2;->this$0:Lcom/android/settings_ex/MasterClearModemReset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 170
    const-string v0, "MasterClearModemReset"

    const-string v1, "MasterClearModemReset-Timeout"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/android/settings_ex/MasterClearModemReset$2;->this$0:Lcom/android/settings_ex/MasterClearModemReset;

    #calls: Lcom/android/settings_ex/MasterClearModemReset;->sendMasterClearIntent()V
    invoke-static {v0}, Lcom/android/settings_ex/MasterClearModemReset;->access$000(Lcom/android/settings_ex/MasterClearModemReset;)V

    .line 172
    return-void
.end method
