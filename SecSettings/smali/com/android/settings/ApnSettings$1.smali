.class Lcom/android/settings_ex/ApnSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ApnSettings;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/settings_ex/ApnSettings$1;->this$0:Lcom/android/settings_ex/ApnSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v3, 0x3e9

    .line 140
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 142
    #calls: Lcom/android/settings_ex/ApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    invoke-static {p2}, Lcom/android/settings_ex/ApnSettings;->access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    .line 143
    .local v0, state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    sget-object v1, Lcom/android/settings_ex/ApnSettings$4;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 178
    .end local v0           #state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    :cond_0
    :goto_0
    return-void

    .line 145
    .restart local v0       #state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    :pswitch_0
    invoke-static {}, Lcom/android/settings_ex/ApnSettings;->access$100()Z

    move-result v1

    if-nez v1, :cond_1

    .line 146
    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings$1;->this$0:Lcom/android/settings_ex/ApnSettings;

    #calls: Lcom/android/settings_ex/ApnSettings;->fillList()V
    invoke-static {v1}, Lcom/android/settings_ex/ApnSettings;->access$200(Lcom/android/settings_ex/ApnSettings;)V

    goto :goto_0

    .line 148
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings$1;->this$0:Lcom/android/settings_ex/ApnSettings;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 155
    .end local v0           #state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SIM_PROFILE_UPDATE_DONE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 156
    invoke-static {}, Lcom/android/settings_ex/ApnSettings;->access$100()Z

    move-result v1

    if-nez v1, :cond_3

    .line 157
    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings$1;->this$0:Lcom/android/settings_ex/ApnSettings;

    #calls: Lcom/android/settings_ex/ApnSettings;->fillList()V
    invoke-static {v1}, Lcom/android/settings_ex/ApnSettings;->access$200(Lcom/android/settings_ex/ApnSettings;)V

    goto :goto_0

    .line 159
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings$1;->this$0:Lcom/android/settings_ex/ApnSettings;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 161
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.CSC_CONNECTION_RESET_DONE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 162
    invoke-static {}, Lcom/android/settings_ex/ApnSettings;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings$1;->this$0:Lcom/android/settings_ex/ApnSettings;

    #getter for: Lcom/android/settings_ex/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;
    invoke-static {v1}, Lcom/android/settings_ex/ApnSettings;->access$300(Lcom/android/settings_ex/ApnSettings;)Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;

    move-result-object v1

    if-nez v1, :cond_5

    .line 164
    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings$1;->this$0:Lcom/android/settings_ex/ApnSettings;

    new-instance v2, Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;

    iget-object v3, p0, Lcom/android/settings_ex/ApnSettings$1;->this$0:Lcom/android/settings_ex/ApnSettings;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/settings_ex/ApnSettings;Lcom/android/settings_ex/ApnSettings$1;)V

    #setter for: Lcom/android/settings_ex/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;
    invoke-static {v1, v2}, Lcom/android/settings_ex/ApnSettings;->access$302(Lcom/android/settings_ex/ApnSettings;Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;)Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;

    .line 166
    :cond_5
    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings$1;->this$0:Lcom/android/settings_ex/ApnSettings;

    #getter for: Lcom/android/settings_ex/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;
    invoke-static {v1}, Lcom/android/settings_ex/ApnSettings;->access$300(Lcom/android/settings_ex/ApnSettings;)Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 169
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.ACTION_DATA_DISABLE_TETHERING_DELAY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
