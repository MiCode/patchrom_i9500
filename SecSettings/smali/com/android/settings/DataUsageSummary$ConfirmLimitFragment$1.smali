.class Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;

.field final synthetic val$limitBytes:J


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;J)V
    .locals 0

    .prologue
    .line 2104
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment$1;->this$0:Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;

    iput-wide p2, p0, Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment$1;->val$limitBytes:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2107
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment$1;->this$0:Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/DataUsageSummary;

    .line 2108
    .local v0, target:Lcom/android/settings_ex/DataUsageSummary;
    if-eqz v0, :cond_0

    .line 2109
    iget-wide v1, p0, Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment$1;->val$limitBytes:J

    #calls: Lcom/android/settings_ex/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/DataUsageSummary;->access$1100(Lcom/android/settings_ex/DataUsageSummary;J)V

    .line 2111
    :cond_0
    return-void
.end method
