.class Lcom/android/settings_ex/DataUsageSummary$ConfirmWarningFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DataUsageSummary$ConfirmWarningFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DataUsageSummary$ConfirmWarningFragment;

.field final synthetic val$warningBytes:J


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DataUsageSummary$ConfirmWarningFragment;J)V
    .locals 0

    .prologue
    .line 2164
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$ConfirmWarningFragment$1;->this$0:Lcom/android/settings_ex/DataUsageSummary$ConfirmWarningFragment;

    iput-wide p2, p0, Lcom/android/settings_ex/DataUsageSummary$ConfirmWarningFragment$1;->val$warningBytes:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2166
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$ConfirmWarningFragment$1;->this$0:Lcom/android/settings_ex/DataUsageSummary$ConfirmWarningFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/DataUsageSummary;

    .line 2167
    .local v0, target:Lcom/android/settings_ex/DataUsageSummary;
    if-eqz v0, :cond_0

    .line 2168
    iget-wide v1, p0, Lcom/android/settings_ex/DataUsageSummary$ConfirmWarningFragment$1;->val$warningBytes:J

    #calls: Lcom/android/settings_ex/DataUsageSummary;->setPolicyWarningBytes(J)V
    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/DataUsageSummary;->access$1400(Lcom/android/settings_ex/DataUsageSummary;J)V

    .line 2170
    :cond_0
    return-void
.end method
