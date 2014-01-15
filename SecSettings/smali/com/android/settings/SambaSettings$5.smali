.class Lcom/android/settings_ex/SambaSettings$5;
.super Ljava/lang/Object;
.source "SambaSettings.java"

# interfaces
.implements Lcom/android/settings_ex/samba/ServerReceiver$OnChangeServerStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/SambaSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/SambaSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/SambaSettings;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lcom/android/settings_ex/SambaSettings$5;->this$0:Lcom/android/settings_ex/SambaSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnChanged(I)V
    .locals 2
    .parameter "status"

    .prologue
    .line 422
    packed-switch p1, :pswitch_data_0

    .line 440
    :goto_0
    :pswitch_0
    return-void

    .line 425
    :pswitch_1
    const-string v0, "SambaSettings"

    const-string v1, "NETWORK_STATE_CHANGE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v0, p0, Lcom/android/settings_ex/SambaSettings$5;->this$0:Lcom/android/settings_ex/SambaSettings;

    #calls: Lcom/android/settings_ex/SambaSettings;->isEthernetConnected()Z
    invoke-static {v0}, Lcom/android/settings_ex/SambaSettings;->access$600(Lcom/android/settings_ex/SambaSettings;)Z

    .line 427
    iget-object v0, p0, Lcom/android/settings_ex/SambaSettings$5;->this$0:Lcom/android/settings_ex/SambaSettings;

    #calls: Lcom/android/settings_ex/SambaSettings;->isWifiConnected()Z
    invoke-static {v0}, Lcom/android/settings_ex/SambaSettings;->access$700(Lcom/android/settings_ex/SambaSettings;)Z

    .line 428
    iget-object v0, p0, Lcom/android/settings_ex/SambaSettings$5;->this$0:Lcom/android/settings_ex/SambaSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/SambaSettings;->Display_renew()V

    goto :goto_0

    .line 433
    :pswitch_2
    const-string v0, "SambaSettings"

    const-string v1, "[SAMBA] SERVER_RENEW"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v0, p0, Lcom/android/settings_ex/SambaSettings$5;->this$0:Lcom/android/settings_ex/SambaSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/SambaSettings;->Display_renew()V

    goto :goto_0

    .line 422
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
