.class Lcom/android/settings_ex/MasterClearConfirm$1;
.super Ljava/lang/Object;
.source "MasterClearConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/MasterClearConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/MasterClearConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/MasterClearConfirm;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/settings_ex/MasterClearConfirm$1;->this$0:Lcom/android/settings_ex/MasterClearConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 101
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    invoke-static {}, Lcom/android/settings_ex/MasterClearConfirm;->isSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/settings_ex/MasterClearConfirm$1;->this$0:Lcom/android/settings_ex/MasterClearConfirm;

    #calls: Lcom/android/settings_ex/MasterClearConfirm;->DoMasterReset()V
    invoke-static {v0}, Lcom/android/settings_ex/MasterClearConfirm;->access$000(Lcom/android/settings_ex/MasterClearConfirm;)V

    .line 112
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/MasterClearConfirm$1;->this$0:Lcom/android/settings_ex/MasterClearConfirm;

    #calls: Lcom/android/settings_ex/MasterClearConfirm;->StartPassword()V
    invoke-static {v0}, Lcom/android/settings_ex/MasterClearConfirm;->access$100(Lcom/android/settings_ex/MasterClearConfirm;)V

    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/MasterClearConfirm$1;->this$0:Lcom/android/settings_ex/MasterClearConfirm;

    #calls: Lcom/android/settings_ex/MasterClearConfirm;->DoMasterReset()V
    invoke-static {v0}, Lcom/android/settings_ex/MasterClearConfirm;->access$000(Lcom/android/settings_ex/MasterClearConfirm;)V

    goto :goto_0
.end method