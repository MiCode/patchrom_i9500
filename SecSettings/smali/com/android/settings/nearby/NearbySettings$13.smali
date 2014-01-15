.class Lcom/android/settings_ex/nearby/NearbySettings$13;
.super Landroid/os/Handler;
.source "NearbySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/nearby/NearbySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/nearby/NearbySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/nearby/NearbySettings;)V
    .locals 0

    .prologue
    .line 1359
    iput-object p1, p0, Lcom/android/settings_ex/nearby/NearbySettings$13;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 1361
    const-string v1, "AllshareSetting: "

    const-string v2, "Handler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1381
    const-string v1, "AllshareSetting: "

    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Undefined handler message :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    :cond_0
    :goto_0
    return-void

    .line 1366
    :pswitch_0
    const-string v1, "AllshareSetting: "

    const-string v2, "Handler"

    const-string v3, "HANDLER_RESET_FUNCTION_STATE"

    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    iget-object v1, p0, Lcom/android/settings_ex/nearby/NearbySettings$13;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    #getter for: Lcom/android/settings_ex/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings_ex/nearby/NearbySettings;->access$300(Lcom/android/settings_ex/nearby/NearbySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1384
    :catch_0
    move-exception v0

    .line 1385
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AllshareSetting: "

    const-string v2, "Handler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/nearby/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1370
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    const-string v1, "AllshareSetting: "

    const-string v2, "Handler"

    const-string v3, "HANDLER_AUTO_START_DMS"

    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    iget-object v1, p0, Lcom/android/settings_ex/nearby/NearbySettings$13;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    #getter for: Lcom/android/settings_ex/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/settings_ex/nearby/NearbySettings;->access$1400(Lcom/android/settings_ex/nearby/NearbySettings;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1372
    iget-object v1, p0, Lcom/android/settings_ex/nearby/NearbySettings$13;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    #getter for: Lcom/android/settings_ex/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/settings_ex/nearby/NearbySettings;->access$1400(Lcom/android/settings_ex/nearby/NearbySettings;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 1375
    :pswitch_2
    const-string v1, "AllshareSetting: "

    const-string v2, "Handler"

    const-string v3, "HANDLER_SELF_FINISH"

    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    iget-object v1, p0, Lcom/android/settings_ex/nearby/NearbySettings$13;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 1377
    iget-object v1, p0, Lcom/android/settings_ex/nearby/NearbySettings$13;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    const/4 v2, 0x1

    #setter for: Lcom/android/settings_ex/nearby/NearbySettings;->bSelfFinish:Z
    invoke-static {v1, v2}, Lcom/android/settings_ex/nearby/NearbySettings;->access$2502(Lcom/android/settings_ex/nearby/NearbySettings;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1364
    nop

    :pswitch_data_0
    .packed-switch 0xbb9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
