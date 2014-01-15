.class Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask$2;
.super Landroid/content/BroadcastReceiver;
.source "AccountSyncSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->registerSamsungAccountReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;)V
    .locals 0

    .prologue
    .line 855
    iput-object p1, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask$2;->this$1:Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 858
    if-eqz p2, :cond_0

    .line 859
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 860
    .local v5, action:Ljava/lang/String;
    const-string v12, "AccountSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "receive intent action is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    const-string v12, "com.msc.action.VALIDATION_CHECK_RESPONSE"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 863
    const-string v12, "result_code"

    const/16 v13, -0x3e7

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 864
    .local v10, resultCode:I
    const-string v12, "client_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 865
    .local v7, clientId:Ljava/lang/String;
    const-string v12, "AccountSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "client = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", result_code = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    const/4 v12, -0x1

    if-ne v10, v12, :cond_7

    .line 868
    const-string v12, "validation_result"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 869
    .local v11, validationResult:Ljava/lang/Boolean;
    const-string v12, "AccountSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "validation_result = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    .line 872
    iget-object v12, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask$2;->this$1:Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;

    const/4 v13, 0x0

    #setter for: Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mValidationStatus:I
    invoke-static {v12, v13}, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->access$402(Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;I)I

    .line 919
    .end local v5           #action:Ljava/lang/String;
    .end local v7           #clientId:Ljava/lang/String;
    .end local v10           #resultCode:I
    .end local v11           #validationResult:Ljava/lang/Boolean;
    :cond_0
    :goto_0
    return-void

    .line 874
    .restart local v5       #action:Ljava/lang/String;
    .restart local v7       #clientId:Ljava/lang/String;
    .restart local v10       #resultCode:I
    .restart local v11       #validationResult:Ljava/lang/Boolean;
    :cond_1
    const-string v12, "check_list"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 877
    .local v6, checkList:I
    const/4 v4, 0x2

    .line 879
    .local v4, MASK_REQUIRE_TNC:I
    const/4 v3, 0x4

    .line 881
    .local v3, MASK_REQUIRE_NAME:I
    const/16 v1, 0x8

    .line 883
    .local v1, MASK_REQUIRE_EMAIL:I
    const/16 v2, 0x10

    .line 885
    .local v2, MASK_REQUIRE_MANDATORY:I
    and-int/lit8 v12, v6, 0x2

    const/4 v13, 0x2

    if-ne v12, v13, :cond_2

    .line 886
    const-string v12, "AccountSettings"

    const-string v13, "validation : require Tnc Agreement"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :cond_2
    and-int/lit8 v12, v6, 0x4

    const/4 v13, 0x4

    if-ne v12, v13, :cond_3

    .line 889
    const-string v12, "AccountSettings"

    const-string v13, "validation : require Name Verification"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_3
    and-int/lit8 v12, v6, 0x8

    const/16 v13, 0x8

    if-ne v12, v13, :cond_4

    .line 892
    const-string v12, "AccountSettings"

    const-string v13, "validation : require E-mail Certificate"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    :cond_4
    and-int/lit8 v12, v6, 0x10

    const/16 v13, 0x10

    if-ne v12, v13, :cond_5

    .line 895
    const-string v12, "AccountSettings"

    const-string v13, "validation : need to fill out required fields"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    :cond_5
    if-lez v6, :cond_6

    .line 899
    const-string v12, "REQUIRED_PROCESS_ACTION"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 900
    .local v9, processAction:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 901
    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 902
    const/high16 v12, 0x1080

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 903
    iget-object v12, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask$2;->this$1:Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;

    move-object/from16 v0, p2

    #setter for: Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mIntentToStartActivity:Landroid/content/Intent;
    invoke-static {v12, v0}, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->access$502(Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;Landroid/content/Intent;)Landroid/content/Intent;

    .line 906
    .end local v9           #processAction:Ljava/lang/String;
    :cond_6
    iget-object v12, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask$2;->this$1:Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;

    const/4 v13, 0x1

    #setter for: Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mValidationStatus:I
    invoke-static {v12, v13}, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->access$402(Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;I)I

    goto :goto_0

    .line 908
    .end local v1           #MASK_REQUIRE_EMAIL:I
    .end local v2           #MASK_REQUIRE_MANDATORY:I
    .end local v3           #MASK_REQUIRE_NAME:I
    .end local v4           #MASK_REQUIRE_TNC:I
    .end local v6           #checkList:I
    .end local v11           #validationResult:Ljava/lang/Boolean;
    :cond_7
    const/4 v12, 0x1

    if-ne v10, v12, :cond_8

    .line 909
    const-string v12, "error_message"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 910
    .local v8, errorMessage:Ljava/lang/String;
    const-string v12, "AccountSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "error_message : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    iget-object v12, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask$2;->this$1:Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;

    const/4 v13, 0x1

    #setter for: Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mValidationStatus:I
    invoke-static {v12, v13}, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->access$402(Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;I)I

    goto/16 :goto_0

    .line 913
    .end local v8           #errorMessage:Ljava/lang/String;
    :cond_8
    const-string v12, "error_message"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 914
    .restart local v8       #errorMessage:Ljava/lang/String;
    const-string v12, "AccountSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "error_message : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    iget-object v12, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask$2;->this$1:Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;

    const/4 v13, 0x1

    #setter for: Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mValidationStatus:I
    invoke-static {v12, v13}, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->access$402(Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;I)I

    goto/16 :goto_0
.end method
