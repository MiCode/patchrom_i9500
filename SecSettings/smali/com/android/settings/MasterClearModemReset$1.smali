.class Lcom/android/settings_ex/MasterClearModemReset$1;
.super Landroid/os/Handler;
.source "MasterClearModemReset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/MasterClearModemReset;
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
    .line 75
    iput-object p1, p0, Lcom/android/settings_ex/MasterClearModemReset$1;->this$0:Lcom/android/settings_ex/MasterClearModemReset;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 77
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 98
    :pswitch_0
    const-string v0, "MasterClearModemReset"

    const-string v1, "Something weird happened"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :goto_0
    return-void

    .line 87
    :pswitch_1
    const-string v0, "MasterClearModemReset"

    const-string v1, "Modem reset is done"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/android/settings_ex/MasterClearModemReset$1;->this$0:Lcom/android/settings_ex/MasterClearModemReset;

    #calls: Lcom/android/settings_ex/MasterClearModemReset;->sendMasterClearIntent()V
    invoke-static {v0}, Lcom/android/settings_ex/MasterClearModemReset;->access$000(Lcom/android/settings_ex/MasterClearModemReset;)V

    goto :goto_0

    .line 93
    :pswitch_2
    const-string v0, "MasterClearModemReset"

    const-string v1, "modem CP2 reset done"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/android/settings_ex/MasterClearModemReset$1;->this$0:Lcom/android/settings_ex/MasterClearModemReset;

    #calls: Lcom/android/settings_ex/MasterClearModemReset;->sendMasterClearIntent()V
    invoke-static {v0}, Lcom/android/settings_ex/MasterClearModemReset;->access$000(Lcom/android/settings_ex/MasterClearModemReset;)V

    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x3f0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
